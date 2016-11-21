class HomeController < ApplicationController
  # before_action :authenticate_user!

  def index

  end

  def candidates
    @candidates = User.all
  end

end
