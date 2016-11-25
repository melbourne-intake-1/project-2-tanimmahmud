module MailboxHelper
  def unread_messages_count
    mailbox.inbox(:unread => true).count(:id)
  end

  def recipients_options(chosen_recipient = nil)
    s = ''
    User.all.each do |user|
        s << "<option value='#{user.id}' #{'selected' if user == chosen_recipient}>#{user.email}</option>"
    end
    s.html_safe
  end
end
