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
end
