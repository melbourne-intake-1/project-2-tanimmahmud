
class TransactionsController< ApplicationController

  def create
  	@job = Job.find(params[:job_id])


    begin


      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )

  		charge = Stripe::Charge.create(
  			:amount       => @job.day.to_i * 100 * 100,
  			:currency     => "aud",
        :customer     => customer.id,
  			:description  => "payment for Job posting")

        Payment.create!(job_id: @job.id)
        redirect_to jobs_path
  	rescue Stripe::CardError => e
  		@error = e
  		redirect_to jobs_path, notice: @error
  	end

  end

end
