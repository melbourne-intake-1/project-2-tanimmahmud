module ApplicationHelper

  def roles
    [
      ['candidate'],
      ['company']
    ]
  end

  def active_page(active_page)
    @active == active_page ? "active" : ""
  end

  def user_avatar(user)
    if user.profile.image.present?
      image_tag user.profile.image_url(:thumb)
    else
      'http://res.cloudinary.com/dn40jh1kc/image/upload/v1480204025/default_ulfy5e.jpg'
    end
  end

end
