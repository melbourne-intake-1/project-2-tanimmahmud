class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    if user_signed_in?
      @experience = Experience.new
    else
      flash[:notice] = 'You are not signed in !'
      redirect_to root_path
    end
  end

  # GET /experiences/1/edit
  def edit
    if current_user != @experience.user
      flash[:notice] = 'You do not have permission to edit this !'
      redirect_to root_path
    end
  end

  # POST /experiences
  # POST /experiences.json
  def create
    if current_user.role == 'candidate'
      @experience = Experience.new(experience_params)
      @experience.user = current_user
      respond_to do |format|
        if @experience.save
          format.html { redirect_to @experience.user.profile, notice: 'Experience was successfully created.' }
          format.json { render :show, status: :created, location: @experience }
        else
          format.html { render :new }
          format.json { render json: @experience.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:notice] = 'You are forbidden to performe this action'
      redirect_to root_path
    end
  end

  # PATCH/PUT /experiences/1
  # PATCH/PUT /experiences/1.json
  def update
    respond_to do |format|
      if @experience.update(experience_params)
        format.html { redirect_to @experience.user.profile, notice: 'Experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @experience }
      else
        format.html { render :edit }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiences/1
  # DELETE /experiences/1.json
  def destroy
    if current_user == @experience.user
      @experience.destroy
      respond_to do |format|
        format.html { redirect_to @experience.user.profile, notice: 'Experience was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      flash[:notice] = 'You are forbidden to performe this action'
      redirect_to root_path
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      @experience = Experience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experience_params
      params.require(:experience).permit(:employer, :job_title, :from, :to, :responsibilities)
    end
end
