module MailboxHelper
  def unread_messages_count
    mailbox.inbox(:unread => true).count(:id)
  end

  def recipients_options(chosen_recipient = nil)
    s = ''
    User.all.each do |user|
        s << "<option value='#{user.id}' data-img-src='#{user.profile.image_url()}' #{'selected' if user == chosen_recipient}>#{user.profile.name}</option>"
    end
    s.html_safe
  end
end
