# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def pagetitle(page_title)
    content_for :title do
      "#{page_title} - #{t(:xiji)}"
    end
  end

  # add stylesheet file into header tag
  def add_stylesheet name, yield_name = :stylesheet
    content_for yield_name, stylesheet_link_tag(name)
  end

  # add javascript file into header tag
  def add_javascript name, yield_name = :javascript
    content_for yield_name, javascript_include_tag(name)
  end
end
