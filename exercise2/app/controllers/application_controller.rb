class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :check_request_type!

  private
  def check_request_type!
    # render json: {error: 'request_type not supported.'}, status: 406 unless request.format == :json
  end
end
