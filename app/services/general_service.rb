class GeneralService
  def filter_url_and_method(params, path)
    if params[:action] == 'new' || params[:action] == 'new_setting'
      url = path
      method = 'POST'
    else
      url = path + params[:id]
      method = 'PUT'
    end

    [url, method]
  end

  def calculate_by_partner(params)
    if params[:name].present? && params[:partner].present?
      partner = Partner.find_by(name: params[:partner])
      if partner.present?
        total_view = partner.total_view.to_i + 1
        partner.total_view = total_view
        price_per_click = Setting.find_by(object_key: 'price_per_click')
        if price_per_click.present?
            object_value = price_per_click.object_value.to_i rescue 1000
        else
            object_value = 1000
        end

        partner.total_payment = total_view * object_value
        partner.save
      end
    end
  end
end
