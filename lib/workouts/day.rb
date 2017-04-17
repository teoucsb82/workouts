class Workouts
  class Day
    attr_reader :day_number
    attr_reader :workouts

    def initialize(round_type, day_number)
      @round_type = round_type
      @day_number = day_number
      @workouts = load_workouts
    end

    private

    def ab_ripper_workout?(workout_name)
      [
        Routine::CHEST_AND_BACK,
        Routine::SHOULDERS_AND_ARMS,
        Routine::LEGS_AND_BACK,
        Routine::CHEST_SHOULDERS_AND_TRICEPS,
        Routine::BACK_AND_BICEPS
      ].include?(workout_name)
    end

    def load_workouts
      workouts = []
      workouts << Workout.new(workout_name)
      workouts << Workout.new(Routine::AB_RIPPER_X) if ab_ripper_workout?(workout_name)
      workouts
    end

    def workout_name
      case @round_type
      when :classic
        Routine.classic(@day_number)
      when :lean
        Routine.lean(@day_number)
      end
    end
  end
end
