PadrinoPjax.helpers do
  def title(str)
    @title = str
    pjax_request? ? content_tag(:title, str) : nil
  end

  def pjax_request?
    env['HTTP_X_PJAX']
  end

  def show_layout?
    !pjax_request?
  end

  # link_to_nav("home", "...")
  def link_to_nav(page, caption, url)
     link_to_unless(page == caption, caption, url)
  end

  # link_to_unless(false, "hey", "...")
  def link_to_unless(condition, caption, url)
    condition ? caption : link_to(caption, url)
  end
end
