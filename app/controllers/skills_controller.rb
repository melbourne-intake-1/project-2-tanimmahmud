class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!



  def new
    if user_signed_in?
      @skill = Skill.new
    else
      flash[:notice] = 'You are not signed in !'
      redirect_to root_path
    end

  end

  # GET /skills/1/edit
  def edit
    if current_user != @skill.user
      flash[:notice] = 'You do not have permission to edit this !'
      redirect_to root_path
    end
  end

  # POST /skills
  # POST /skills.json
  def create
    if current_user.role == 'candidate'
      @skill = Skill.new(skill_params)
      @skill.user = current_user
      respond_to do |format|
        if @skill.save
          format.html { redirect_to @skill.user.profile, notice: 'Experience was successfully created.' }
          format.json { render :show, status: :created, location: @skill }
        else
          format.html { render :new }
          format.json { render json: @skill.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:notice] = 'You are forbidden to performe this action'
      redirect_to root_path
    end
  end

  # PATCH/PUT /skills/1
  # PATCH/PUT /skills/1.json
  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to @skill, notice: 'Skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill }
      else
        format.html { render :edit }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.json
  def destroy
    if current_user == @skill.user
      @skill.destroy
      respond_to do |format|
        format.html { redirect_to @skill.user.profile, notice: 'Experience was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      flash[:notice] = 'You are forbidden to performe this action'
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_params
      params.require(:skill).permit(:name)
    end
end
