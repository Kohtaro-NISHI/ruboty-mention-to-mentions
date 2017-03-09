module Ruboty
  module MentionToMentions
    module Actions
      class List < Ruboty::Actions::Base
        def call
          units = Ruboty::MentionToMentions::List.new(message.robot.brain).units
          list = units.map do |unit|
            "#{unit.trigger} => #{unit.mentions}"
          end
          message.reply("```\n#{list.join("\n")}\n```")
        end
      end
    end
  end
end
