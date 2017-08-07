class HomeController < ApplicationController
  before_action :set_url, only: [:new, :edit]
  before_action :set_url_setting, only: [:new_setting, :edit_setting]
  before_action :get_partner, only: [:edit, :update, :destroy]
  before_action :get_setting, only: [:edit_setting, :update_setting, :destroy_setting]

  def index
    @partners = @partner_service.get_all(params)
    @price_per_click = Setting.find_by(object_key: 'price_per_click').object_value.to_f rescue 1000.to_f
  end

  def new
  end

  def create
    message = @partner_service.create_partner(params)

    redirect_to root_url, message
  end

  def edit
  end

  def update
    message = @partner_service.update_partner(params, @partner)

    redirect_to root_url, message
  end

  def destroy
    message = @partner_service.destroy_partner(@partner)

    redirect_to root_url, message
  end

  def setting
    @settings = @setting_service.get_all(params)
  end

  def new_setting
  end

  def create_setting
    message = @setting_service.create_setting(params)

    redirect_to settings_url, message
  end

  def edit_setting
  end

  def update_setting
    message = @setting_service.update_setting(params, @setting)

    redirect_to settings_url, message
  end

  def destroy_setting
    message = @setting_service.destroy_setting(@setting)

    redirect_to settings_url, message
  end

  def detail
    @general_service.calculate_by_partner(params)
  end

  private
    def set_url
      @url, @method = @general_service.filter_url_and_method(params, '/partners/')
    end

    def set_url_setting
      @url, @method = @general_service.filter_url_and_method(params, '/settings/')
    end

    def get_partner
      @partner = Partner.find(params[:id])
    end

    def get_setting
      @setting = Setting.find(params[:id])
    end
end
