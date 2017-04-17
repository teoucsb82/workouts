class Workouts
  class Round
    attr_reader :days
    attr_reader :type

    def initialize(type = :classic)
      @type = type
      @days = load_days
    end

    def workouts
      @days.map(&:workouts)
    end

    private

    def load_days
      Array.new(90) { |day_number| Day.new(@type, day_number + 1) }
    end
  end
end
