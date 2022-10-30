module Caffeinate
  module Webui
    class Name
      def self.for(object)
        if object.respond_to?(:name)
          object.name
        elsif object.respond_to?(:full_name)
          object.full_name
        elsif object.respond_to?(:display_name)
          object.display_name
        elsif object.respond_to?(:email)
          object.email
        elsif object.respond_to?(:to_label)
          object.to_label
        else
          "#{object.class.name}##{object.to_param}"
        end
      end
    end
  end
end
