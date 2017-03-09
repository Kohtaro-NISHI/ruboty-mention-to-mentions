module Ruboty
  module MentionToMentions
    class Unit
      attr_accessor :trigger, :mentions

      def initialize(params)
        @trigger = params[:trigger] if params[:trigger]
        @mentions = params[:mentions] if params[:mentions]
      end
    end
  end
end
