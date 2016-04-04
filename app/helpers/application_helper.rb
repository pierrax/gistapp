module ApplicationHelper
  def flash_class(level)
    case level.to_s
      when 'notice' then 'alert alert-info'
      when 'success' then 'alert alert-success'
      when 'error' then 'alert alert-danger'
      when 'alert' then 'alert alert-warning'
    end
  end

  def default_profile_pic_url
    'http://www.isaca.org/SQTComm_Images/profile-default.png'
  end
end
