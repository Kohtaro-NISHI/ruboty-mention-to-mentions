require "ruboty/mention-to-mentions/actions/detect"

module Ruboty
  module Handlers
    # A Ruboty Handler description
    class MentionToMentions < Base
      on /pattern\z/, name: 'detect', description: 'description'


      def detect(message)
        Ruboty::MentionToMentions::Actions::Detect.new(message).call
      end

    end
  end
end
