module Ruboty
  module MentionToMentions
    class List
      extend Forwardable
      attr_reader :brain
      def_delegators :units, :count, :size, :[]

      def initialize(brain)
        @brain = brain
      end

      def units
        list[:units]
      end

      def add(params)
        unit = Unit.new(params)
        units.push(unit)
        unit
      end

      def delete(unit)
        units.delete(unit)
      end

      def find_by_trigger(trigger)
        units.find { |unit| unit.trigger == trigger }
      end

      private

      def list
        brain.data['mention_to_mentions'] ||= { units: [] }
      end
    end
  end
end
