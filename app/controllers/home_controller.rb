class HomeController < ApplicationController
  # before_action :authenticate_user!

  def index
    if user_signed_in?
      @profile = current_user.profile
      # If user has just signed up, make them fill out their profile
      redirect_to new_profile_url if @profile.nil?
    end
  end

  def candidates
    @candidates = User.joins(:profile).where('role': 'candidate').order('created_at DESC').paginate(page: params[:page], per_page: 30)
  end

  def companies
    @companies = User.joins(:profile).where('role': 'company').order('created_at DESC').paginate(page: params[:page], per_page: 30)
  end

  def jobs_listing
    @jobs = Job.search(params[:search]).where('status': 'approved')
  end

end
