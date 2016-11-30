class UserSearch < ApplicationRecord

  def search_users

    users = Profile.all

    users = users.where(["name LIKE?", "%#{name}%"]) if name.present?
    users = users.where(["title LIKE?", "%#{title}%"]) if title.present?
    users = users.where(["address LIKE?", "%#{address}%"]) if address.present?

    return users
  end

end
