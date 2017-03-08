module Ruboty
  module MentionToMentions
    module Actions
      class Detect < Ruboty::Actions::Base
        def call
          units = Ruboty::MentionToMentions::List.new(message.robot.brain).units
          units.each do |unit|
            if message.body.start_with?(unit.trigger)
              message.reply("#{unit.mentions}\n#{message.body.gsub(unit.trigger, '')}")
            end
          end
        end
      end
    end
  end
end
