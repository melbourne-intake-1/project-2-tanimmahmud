class UserSearchesController < ApplicationController

    def new
  		@user_search = UserSearch.new
      @title = Profile.uniq.pluck(:title)
  	end

  	def create
  		@user_search = UserSearch.create(user_search_params)
  		redirect_to @user_search
  	end

  	def show
  		@user_search = UserSearch.find(params[:id])
  	end

  	private

  	def user_search_params
  		params.require(:user_search).permit(:name, :title, :address)
  	end
end
