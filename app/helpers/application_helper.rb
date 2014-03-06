module ApplicationHelper

  def markdown
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, no_intra_emphasis: true, space_after_headers: true, lax_spacing: true, quote: true, autolink: true)
  end 
end
