class SocialsController < ApplicationController
  before_action :set_social, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /socials/new
  def new
    if user_signed_in?
      @social = Social.new
    else
      flash[:notice] = 'You are not signed in !'
      redirect_to root_path
    end

  end

  # GET /socials/1/edit
  def edit
    if current_user != @social.user
      flash[:notice] = 'You do not have permission to edit this !'
      redirect_to root_path
    end
  end

  # POST /socials
  # POST /socials.json
  def create
    @social = Social.new(social_params)
    @social.user = current_user
    respond_to do |format|
      if @social.save
        format.html { redirect_to @social.user.profile, notice: 'Experience was successfully created.' }
        format.json { render :show, status: :created, location: @social }
      else
        format.html { render :new }
        format.json { render json: @social.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socials/1
  # PATCH/PUT /socials/1.json
  def update
    respond_to do |format|
      if @social.update(social_params)
        format.html { redirect_to @social, notice: 'Social was successfully updated.' }
        format.json { render :show, status: :ok, location: @social }
      else
        format.html { render :edit }
        format.json { render json: @social.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socials/1
  # DELETE /socials/1.json
  def destroy
    if current_user == @social.user
      @social.destroy
      respond_to do |format|
        format.html { redirect_to @social.user.profile, notice: 'Experience was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      flash[:notice] = 'You are forbidden to performe this action'
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social
      @social = Social.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def social_params
      params.require(:social).permit(:network, :username, :user_id)
    end
end
