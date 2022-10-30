module Caffeinate
  module Webui
    class ApplicationController < ActionController::Base
      layout 'caffeinate/webui/layouts/application'

      helper_method :page_title
      def page_title
        if @page_title
          "#{@page_title} - Caffeinate"
        else
          "Caffeinate"
        end
      end

      def set_page_title(val)
        @page_title = val
      end
    end
  end
end
