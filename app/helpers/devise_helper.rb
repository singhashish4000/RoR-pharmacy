# frozen_string_literal: true

module DeviseHelper
    # A simple way to show error messages for the current devise resource. If you need
    # to customize this method, you can either overwrite it in your application helpers or
    # copy the views to your application.
    #
    # This method is intended to stay simple and it is unlikely that we are going to change
    # it to add more behavior or options.
    def devise_error_messages!
      return "" if resource.errors.empty?
  
     p messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
     p sentence = "Error's"
  
      html = <<-HTML
      <div id="error_explanation">
        <div class="panel panel-default devise-bs">
          <div class="panel-heading" style='background-color:#B4FFBF'> 
              <h2>#{sentence}</h2>
          </div>
          <div class="panel-body">    
              <ul>#{messages}</ul>
          </div>
          </div>    
        </div>
      HTML
  
      html.html_safe
    end
  end
  