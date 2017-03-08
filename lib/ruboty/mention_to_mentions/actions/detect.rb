module Ruboty
  module MentionToMentions
    module Actions
      class Detect < Ruboty::Actions::Base
        def call
          message.reply(detect)
        rescue => e
          message.reply(e.message)
        end

        private
        def detect
          # TODO: main logic
        end
      end
    end
  end
end
