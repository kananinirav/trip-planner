# frozen_string_literal: true

# Display error below the input filed
ActionView::Base.field_error_proc = proc do |html_tag, instance_tag|
  fragment = Nokogiri::HTML.fragment(html_tag)
  field = fragment.at('input,select,textarea')

  html = if field
           field['class'] = "#{field['class']} error-box"
           html = <<-HTML
              #{fragment}
              <span class="error">#{instance_tag.error_message.first}</span>
           HTML
           html
         else
           html_tag
         end

  html.html_safe
end
