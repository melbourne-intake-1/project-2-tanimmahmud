class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]
  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show

  end

  # GET /profiles/new
  def new
    if user_signed_in?
      if current_user.profile.present?
        flash[:notice] = 'You already have a profile'
        redirect_to root_path
      else
        @profile = Profile.new
      end
    else
      flash[:notice] = 'You are not signed in'
      redirect_to root_path
    end
  end

  # GET /profiles/1/edit
  def edit
    if current_user != @profile.user
      flash[:notice] = 'You do not have permission to edit this !'
      redirect_to root_path
    end
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
     if current_user == @profile.user
       @profile.destroy
       respond_to do |format|
         format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
         format.json { head :no_content }
       end
     else
       flash[:notice] = 'You can not delete profile'
       redirect_to root_path
     end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit( :name, :title, :image, :description, :resume_file, :address, :state)
    end
end
