class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken

  protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }
  before_action :skip_session

  protected

  def skip_session
    request.session_options[:skip] = true
  end

  # def skip_session
  #   unless current_user
  #     request.session_options = {drop: true}
  #   end
  # end
end
