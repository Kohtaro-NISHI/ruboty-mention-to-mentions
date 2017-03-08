module Ruboty
  module MentionToMentions
    class Unit
      attr_accessor :trigger, :mentions

      def initialize(params)
        @trigger = params[:trigger] if params[:trigger]
        @mentions = params[:mentions] if params[:mentions]
      end

      def message(new: false)
        if new
          "#{@trigger}を追加しました"
        else
          "#{@trigger}は既に追加されています"
        end
      end
    end
  end
end
