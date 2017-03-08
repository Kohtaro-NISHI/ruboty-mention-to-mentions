require "ruboty/mention_to_mentions/actions/register"
require "ruboty/mention_to_mentions/actions/detect"

module Ruboty
  module Handlers
    # A Ruboty Handler description
    class MentionToMentions < Base
      on /mentions new\s+(.*)\s+(.*)/m, name: 'register', description: 'redister trigger and mentions'
      on /(.*)/, name: 'detect', description: 'auto detecting registered mentions', all: true


      def register(message)
        Ruboty::MentionToMentions::Actions::Register.new(message).call
      end

      def detect(message)
        Ruboty::MentionToMentions::Actions::Detect.new(message).call
      end
    end
  end
end
