class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :mailbox, :conversation

  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end

  private

  def mailbox
    @mailbox ||= current_user.mailbox
  end

  def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end

  protected

  

  def redirect_back_or(path)
    redirect_to request.referer || path
  end
end
