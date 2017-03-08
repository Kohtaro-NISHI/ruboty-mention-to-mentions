module Ruboty
  module MentionToMentions
    module Actions
      class Register < Ruboty::Actions::Base
        attr_reader :list

        def call
          @list = Ruboty::MentionToMentions::List.new(message.robot.brain)
          message.reply(register)
        end

        private
        def register
          trigger = message.match_data[1]
          mentions = message.match_data[2]
          if unit = @list.find_by_trigger(trigger)
            unit.message(new: false)
          else
            @list.add({trigger: trigger, mentions: mentions}).message(new: true)
          end
        end
      end
    end
  end
end
