module Ruboty
  module MentionToMentions
    module Actions
      class Delete < Ruboty::Actions::Base
        attr_reader :list

        def call
          @list = Ruboty::MentionToMentions::List.new(message.robot.brain)
          message.reply(delete)
        end

        private
        def delete
          trigger = message.match_data[1]
          if unit = @list.find_by_trigger(trigger)
            @list.delete(unit)
            "`#{trigger}` を削除しました。"
          else
            "`#{trigger}` は登録されていません。"
          end
        end
      end
    end
  end
end
