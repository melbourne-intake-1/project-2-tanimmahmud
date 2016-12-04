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

  def markdown(content)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      disable_indented_code_blocks: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(content).html_safe
  end
end
