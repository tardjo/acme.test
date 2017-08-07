class SettingService
  def get_all(params)
    Setting.get_all(params)
  end

  def create_setting(params)
    if params[:setting].present? && params[:setting][:object_key].present? && params[:setting][:object_value].present?
      setting = Setting.new(object_key: params[:setting][:object_key], object_value: params[:setting][:object_value])
      if setting.save
        {notice: 'Create setting successfully'}
      else
        {alert: 'Something when wrong: data not save ' + setting.errors.messages.map{|k,v| "#{k} #{v.join('')}"}.join('&')}
      end
    else
      {alert: 'Something when wrong: invalid parameter'}
    end
  end

  def update_setting(params, setting)
    if setting.present? && params[:setting].present? && params[:setting][:object_key].present? && params[:setting][:object_value].present?
      if setting.update_attributes(object_key: params[:setting][:object_key], object_value: params[:setting][:object_value])
        {notice: 'Update setting successfully'}
      else
        {alert: 'Something when wrong: data not updated ' + setting.errors.messages.map{|k,v| "#{k} #{v.join('')}"}.join('&')}
      end
    else
      {alert: 'Something when wrong: invalid parameter'}
    end
  end

  def destroy_setting(setting)
    if setting.present?
      if setting.destroy
        {notice: 'Delete setting successfully'}
      else
        {alert: 'Something when wrong: data not deleted'}
      end
    else
      {alert: 'Something when wrong: invalid setting'}
    end
  end
end
