class HomeController < ApplicationController
  # before_action :authenticate_user!

  def index
    if user_signed_in?
      @profile = current_user.profile
      # If user has just signed up, make them fill out their profile
      redirect_to new_profile_url if @profile.nil?
    end
    @jobs = Job.where('status': 'approved').order('created_at DESC')
    @jobs = @jobs.search(params[:search])
    @candidates = User.joins(:profile).where('role': 'candidate').order('created_at DESC')
  end

  def candidates
    @candidates = User.joins(:profile).where('role': 'candidate').order('created_at DESC').paginate(page: params[:page], per_page: 30)
    @candidates = @candidates.where(["title LIKE?", "%#{params[:search]}%"])
  end

  def jobs_listing
    @jobs = Job.where('status': 'approved').order('created_at DESC')
    @jobs = @jobs.search(params[:search])
  end

end
