module HomeHelper
  def get_total_payment(total_payment)
    total_payment.nil? ? 0 : total_payment
  end

  def get_total_view(total_view)
    total_view.nil? ? 0 : total_view
  end

  def getName(partner)
    partner.nil? ? '' : partner.name
  end

  def getObjectKey(setting)
    setting.nil? ? '' : setting.object_key
  end

  def getObjectValue(setting)
    setting.nil? ? '' : setting.object_value
  end
end
