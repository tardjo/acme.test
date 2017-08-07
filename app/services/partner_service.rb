class PartnerService
  def get_all
    Partner.get_all
  end

  def create_partner(params)
    if params[:partner].present? && params[:partner][:name].present?
      partner = Partner.new(name: params[:partner][:name])
      if partner.save
        {notice: 'Create partner successfully'}
      else
        {alert: 'Something when wrong: data not save ' + partner.errors.messages.map{|k,v| "#{k} #{v.join('')}"}.join('&')}
      end
    else
      {alert: 'Something when wrong: invalid parameter'}
    end
  end

  def update_partner(params, partner)
    if partner.present? && params[:partner].present? && params[:partner][:name].present?
      if partner.update_attributes(name: params[:partner][:name])
        {notice: 'Update partner successfully'}
      else
        {alert: 'Something when wrong: data not updated ' + partner.errors.messages.map{|k,v| "#{k} #{v.join('')}"}.join('&')}
      end
    else
      {alert: 'Something when wrong: invalid parameter'}
    end
  end

  def destroy_partner(partner)
    if partner.present?
      if partner.destroy
        {notice: 'Delete partner successfully'}
      else
        {alert: 'Something when wrong: data not deleted'}
      end
    else
      {alert: 'Something when wrong: invalid partner'}
    end
  end
end
