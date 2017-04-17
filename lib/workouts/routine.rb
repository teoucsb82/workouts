class Workouts
  class Routine
    CHEST_AND_BACK = 'Chest & Back'.freeze
    PLYOMETRICS = 'Plyometrics'.freeze
    SHOULDERS_AND_ARMS = 'Shoulders & Arms'.freeze
    YOGA_X = 'Yoga X'.freeze
    LEGS_AND_BACK = 'Legs & Back'.freeze
    KENPO_X = 'Kenpo X'.freeze
    CORE_SYNERGISTICS = 'Core Synergistics'.freeze
    CHEST_SHOULDERS_AND_TRICEPS = 'Chest, Shoulders & Triceps'.freeze
    BACK_AND_BICEPS = 'Back & Biceps'.freeze
    REST_STRETCH = 'Rest/Stretch'.freeze
    CARDIO_X = 'Cardio X'.freeze
    AB_RIPPER_X = 'Ab Ripper X'.freeze

    def self.all
      [
        CHEST_AND_BACK,
        PLYOMETRICS,
        SHOULDERS_AND_ARMS,
        YOGA_X,
        LEGS_AND_BACK,
        KENPO_X,
        CORE_SYNERGISTICS,
        CHEST_SHOULDERS_AND_TRICEPS,
        BACK_AND_BICEPS,
        REST_STRETCH,
        CARDIO_X,
        AB_RIPPER_X
      ]
    end

    def self.classic(day_number)
      case day_number
      when 1, 8, 15, 57, 71
        CHEST_AND_BACK
      when 2, 9, 16, 30, 37, 44, 58, 65, 72, 79
        PLYOMETRICS
      when 3, 10, 17, 59, 73
        SHOULDERS_AND_ARMS
      when 4, 11, 18, 22, 27, 32, 39, 46, 50, 55, 60, 67, 74, 81, 85, 90
        YOGA_X
      when 5, 12, 19, 33, 40, 47, 61, 68, 75, 82
        LEGS_AND_BACK
      when 6, 13, 20, 24, 34, 41, 48, 52, 62, 69, 76, 83, 87
        KENPO_X
      when 23, 26, 51, 54, 86, 89
        CORE_SYNERGISTICS
      when 29, 36, 43, 64, 78
        CHEST_SHOULDERS_AND_TRICEPS
      when 31, 38, 45, 66, 80
        BACK_AND_BICEPS
      else
        REST_STRETCH
      end
    end

    def self.lean(day_number)
      case day_number
      when 1, 8, 15, 23, 29, 36, 43, 51, 61, 68, 75, 82, 86
        CORE_SYNERGISTICS
      when 2, 9, 16, 26, 30, 37, 44, 54, 58, 65, 72, 79, 89
        CARDIO_X
      when 57, 71
        CHEST_AND_BACK
      when 3, 17, 59, 73
        SHOULDERS_AND_ARMS
      when 4, 11, 18, 22, 27, 32, 39, 46, 50, 55, 60, 67, 74, 81, 85, 90
        YOGA_X
      when 5, 12, 19, 33, 40, 47
        LEGS_AND_BACK
      when 6, 13, 20, 24, 34, 41, 48, 52, 62, 69, 76, 83, 87
        KENPO_X
      when 31, 38, 45, 64, 78
        CHEST_SHOULDERS_AND_TRICEPS
      when 10, 66, 80
        BACK_AND_BICEPS
      else
        REST_STRETCH
      end
    end
  end
end
