class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  # GET /jobs
  # GET /jobs.json
  def index
    # @jobs = Job.search(params[:search])
    @jobs = current_user.jobs
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  end

  # GET /jobs/new
  def new
    if current_user.role == 'company'
      @job = Job.new
    else
      flash[:notice] = 'You do not have permission to create new job'
      redirect_to jobs_path
    end
  end

  # GET /jobs/1/edit
  def edit
    if current_user != @job.user
      flash[:notice] = 'You do not have permission to edit this !'
      redirect_to jobs_listing_path
    end
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)
    @job.user = current_user

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    if current_user == @job.user
      @job.destroy
      respond_to do |format|
        format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      flash[:notice] = 'You do not have permission to delete this !'
      redirect_to jobs_listing_path
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit( :job_type, :description, :position, :location, :status, :day, :amount)
    end
end
