class Workouts
  class Move
    attr_accessor :completed
    attr_accessor :description
    attr_accessor :reps
    attr_accessor :weight

    attr_reader :break
    attr_reader :name

    def initialize(options = {})
      @name = options[:name]
      @completed = false
      @reps = 0

      @weight = options[:weight] || false
      @break = options[:break] || false
    end
  end
end
