require 'minitest/autorun'
require 'minitest/spec'
require 'workouts'
require 'pry'

class RoundTest < Minitest::Test
  describe Workouts::Round do
    before do
      @round = Workouts::Round.new
    end

    describe 'when created with default' do
      it { assert_equal :classic, @round.type }

      describe '#days' do
        before do
          @days = @round.days
        end

        it { assert_equal Workouts::Day, @days.first.class }

        it 'returns 90 days' do
          assert_equal 90, @days.length
        end
      end

      describe 'workouts' do
        before do
          @workouts = @round.workouts
        end

        it 'returns an array of workout objects' do
          assert_equal Array, @workouts.class

          @first_workout = @workouts[0]
          assert_equal Workouts::Routine::CHEST_AND_BACK, @first_workout.first.name
          assert_equal Workouts::Routine::AB_RIPPER_X, @first_workout.last.name

          @second_workout = @workouts[1]
          assert_equal Workouts::Routine::PLYOMETRICS, @second_workout.first.name
        end
      end
    end

    describe 'P90X lean routine' do
      before do
        @round = Workouts::Round.new(:lean)
      end

      it { assert_equal :lean, @round.type }
    end
  end
end
