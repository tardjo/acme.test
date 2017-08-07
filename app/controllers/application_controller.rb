class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def initialize
    super
    @general_service = GeneralService.new
    @partner_service = PartnerService.new
    @setting_service = SettingService.new
  end
end
