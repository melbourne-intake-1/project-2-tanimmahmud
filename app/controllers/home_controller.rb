class HomeController < ApplicationController
  # before_action :authenticate_user!

  def index

  end

  def candidates
    @candidates = User.order('created_at DESC').paginate(page: params[:page], per_page: 30)
  end

end
