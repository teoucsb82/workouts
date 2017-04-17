class Workouts
  class Workout
    attr_accessor :description
    attr_reader :name
    attr_reader :moves

    def initialize(name)
      @name = name
      @moves = []
      load_moves
    end

    private

    def add_break
      @moves << Move.new(name: 'Break', break: true)
    end

    def create_chest_and_back
      @moves << Move.new(name: 'Standard Push-Up')
      @moves << Move.new(name: 'Wide Front Pull-Up')
      @moves << Move.new(name: 'Military Push-Up')
      @moves << Move.new(name: 'Reverse Grip Chin-Up')
      add_break
      @moves << Move.new(name: 'Wide Fly Push-Ups')
      @moves << Move.new(name: 'Closed Grip Overhand Pull-Up')
      @moves << Move.new(name: 'Decline Push-Up')
      @moves << Move.new(name: 'Heavy Pants', weight: 0)
      add_break
      @moves << Move.new(name: 'Diamond Push-Up')
      @moves << Move.new(name: 'Lawnmowers', weight: 0)
      @moves << Move.new(name: 'Dive-Bomber Push-Ups')
      @moves << Move.new(name: 'Back Flys', weight: 0)
      add_break
      @moves << Move.new(name: 'Wide Front Pull-Up')
      @moves << Move.new(name: 'Standard Push-Up')
      @moves << Move.new(name: 'Reverse Grip Chin-Up')
      @moves << Move.new(name: 'Military Push-Up')
      add_break
      @moves << Move.new(name: 'Closed Grip Overhand Pull-Up')
      @moves << Move.new(name: 'Wide Fly Push-Ups')
      @moves << Move.new(name: 'Heavy Pants', weight: 0)
      @moves << Move.new(name: 'Decline Push-Up')
      add_break
      @moves << Move.new(name: 'Lawnmowers', weight: 0)
      @moves << Move.new(name: 'Diamond Push-Up')
      @moves << Move.new(name: 'Back Flys', weight: 0)
      @moves << Move.new(name: 'Dive-Bomber Push-Ups')
    end

    def create_plyometrics
      @moves << Move.new(name: 'Jump Squats')
      @moves << Move.new(name: 'Run Stance Squats')
      @moves << Move.new(name: 'Airborne Heismans')
      @moves << Move.new(name: 'Swing Kicks')
      @moves << Move.new(name: 'Jump Squats')
      @moves << Move.new(name: 'Run Stance Squats')
      @moves << Move.new(name: 'Airborne Heismans')
      @moves << Move.new(name: 'Swing Kicks')
      add_break
      @moves << Move.new(name: 'Squat Reach Jumps')
      @moves << Move.new(name: 'Run Stance Squat Switch Pick Ups')
      @moves << Move.new(name: 'Double Airborne Heismans')
      @moves << Move.new(name: 'Circle Runs')
      @moves << Move.new(name: 'Squat Reach Jumps')
      @moves << Move.new(name: 'Run Stance Squat Switch Pick Ups')
      @moves << Move.new(name: 'Double Airborne Heismans')
      @moves << Move.new(name: 'Circle Runs')
      add_break
      @moves << Move.new(name: 'Jump Knee Tucks')
      @moves << Move.new(name: 'Mary Katherine Lunges')
      @moves << Move.new(name: 'Leapfrog Squats')
      @moves << Move.new(name: 'Twist Combos')
      @moves << Move.new(name: 'Jump Knee Tucks')
      @moves << Move.new(name: 'Mary Katherine Lunges')
      @moves << Move.new(name: 'Leapfrog Squats')
      @moves << Move.new(name: 'Twist Combos')
      add_break
      @moves << Move.new(name: 'Rock Star Hops')
      @moves << Move.new(name: 'Gap Jumps')
      @moves << Move.new(name: 'Squat Jacks')
      @moves << Move.new(name: 'Military March')
      @moves << Move.new(name: 'Rock Star Hops')
      @moves << Move.new(name: 'Gap Jumps')
      @moves << Move.new(name: 'Squat Jacks')
      @moves << Move.new(name: 'Military March')
      add_break
      @moves << Move.new(name: 'Run Squat 180 Jump Switches')
      @moves << Move.new(name: 'Lateral Leapfrog Squats')
      @moves << Move.new(name: 'Monster Truck Tires')
      @moves << Move.new(name: 'Hot Foot Jumps')
      @moves << Move.new(name: 'Run Squat 180 Jump Switches')
      @moves << Move.new(name: 'Lateral Leapfrog Squats')
      @moves << Move.new(name: 'Monster Truck Tires')
      @moves << Move.new(name: 'Hot Foot Jumps')
      add_break
      @moves << Move.new(name: 'Pitch and Catch')
      @moves << Move.new(name: 'Jump Shots')
      @moves << Move.new(name: 'Football Hero')
    end

    def create_shoulders_and_arms
      @moves << Move.new(name: 'Alternating Shoulder Press', weight: 0)
      @moves << Move.new(name: 'In & Out Bicep Curls', weight: 0)
      @moves << Move.new(name: 'Two-Arm Tricep Kickback', weight: 0)
      @moves << Move.new(name: 'Alternating Shoulder Press', weight: 0)
      @moves << Move.new(name: 'In & Out Bicep Curls', weight: 0)
      @moves << Move.new(name: 'Two-Arm Tricep Kickback', weight: 0)
      add_break
      @moves << Move.new(name: "Deep Swimmer's Presses", weight: 0)
      @moves << Move.new(name: 'Full Supination Concentration Curls', weight: 0)
      @moves << Move.new(name: 'Chair Dips')
      @moves << Move.new(name: "Deep Swimmer's Presses", weight: 0)
      @moves << Move.new(name: 'Full Supination Concentration Curls', weight: 0)
      @moves << Move.new(name: 'Chair Dips')
      add_break
      @moves << Move.new(name: 'Upright Rows', weight: 0)
      @moves << Move.new(name: 'Static Arm Curls', weight: 0)
      @moves << Move.new(name: 'Flip Grip Twist Tricep Kickbacks', weight: 0)
      @moves << Move.new(name: 'Upright Rows', weight: 0)
      @moves << Move.new(name: 'Static Arm Curls', weight: 0)
      @moves << Move.new(name: 'Flip Grip Twist Tricep Kickbacks', weight: 0)
      add_break
      @moves << Move.new(name: 'Seated Two-Angle Shoulder Fly', weight: 0)
      @moves << Move.new(name: 'Crouching Cohen Curls', weight: 0)
      @moves << Move.new(name: 'Lying Down Triceps Extensions', weight: 0)
      @moves << Move.new(name: 'Seated Two-Angle Shoulder Fly', weight: 0)
      @moves << Move.new(name: 'Crouching Cohen Curls', weight: 0)
      @moves << Move.new(name: 'Lying Down Triceps Extensions', weight: 0)
      add_break
      @moves << Move.new(name: 'In & Out Straight-Arm Shoulder Fly', weight: 0)
      @moves << Move.new(name: 'Congdon Curls', weight: 0)
      @moves << Move.new(name: 'Side-Tri Rises')
      @moves << Move.new(name: 'In & Out Straight-Arm Shoulder Fly', weight: 0)
      @moves << Move.new(name: 'Congdon Curls', weight: 0)
      @moves << Move.new(name: 'Side-Tri Rises')
    end

    def create_yoga_x
      @moves << Move.new(name: "Runner's Pose")
      @moves << Move.new(name: 'Crescent Pose')
      @moves << Move.new(name: 'Warrior One')
      @moves << Move.new(name: 'Warrior Two')
      @moves << Move.new(name: 'Reverse Warrior')
      @moves << Move.new(name: 'Triangle Pose')
      @moves << Move.new(name: 'Twisting Triangle')
      @moves << Move.new(name: 'Chair to Twisting Chair (Prayer Twist)')
      @moves << Move.new(name: 'Right-Angle Pose to Extended Right-Angle Pose & Grab')
      @moves << Move.new(name: "Prayer twist from Runner's Pose to Side Arm Balance")
      @moves << Move.new(name: 'Warrior Three to Standing Splits')
      @moves << Move.new(name: 'Half Moon to Twisting Half Moon')
      add_break
      @moves << Move.new(name: 'Tree')
      @moves << Move.new(name: 'Royal Dancer')
      @moves << Move.new(name: 'Standing Leg Extension')
      add_break
      @moves << Move.new(name: 'Crane (Pre-Handstand)')
      @moves << Move.new(name: 'Seated Spinal Stretch')
      @moves << Move.new(name: 'Cat Stretch')
      @moves << Move.new(name: 'Frog')
      @moves << Move.new(name: 'Bridge or Wheel')
      @moves << Move.new(name: 'Plough into Shoulder Stand with Leg Variations into Plough')
      @moves << Move.new(name: 'Table')
      @moves << Move.new(name: 'Cobbler Pose')
      @moves << Move.new(name: 'One-Legged Hamstring Stretch into Two-Legged Hamstring Stretch')
      add_break
      @moves << Move.new(name: 'Touch the Sky')
      @moves << Move.new(name: 'Boat')
      @moves << Move.new(name: 'Half Boat')
      @moves << Move.new(name: 'Scissor')
      @moves << Move.new(name: 'Torso Twist Hold')
      @moves << Move.new(name: 'Deep Torso Twist Hold')
      @moves << Move.new(name: 'Touch the Sky')
      add_break
      @moves << Move.new(name: 'Side Twist')
      @moves << Move.new(name: 'Glute Stretch')
      @moves << Move.new(name: 'Happy Baby')
      @moves << Move.new(name: "Child's Pose")
      @moves << Move.new(name: 'Shavasana (Corpse Pose)')
      @moves << Move.new(name: 'Fetal Pose')
      @moves << Move.new(name: 'Meditation Pose (Lotus)')
    end

    def create_legs_and_back
      @moves << Move.new(name: 'Balanced Lunges', weight: 0)
      @moves << Move.new(name: 'Calf-Raise Squats', weight: 0)
      @moves << Move.new(name: 'Reverse Grip Chin-Ups')
      @moves << Move.new(name: 'Super Skaters')
      @moves << Move.new(name: 'Wall Squats')
      @moves << Move.new(name: 'Wide Front Pull-Ups')
      @moves << Move.new(name: 'Step Back Lunge', weight: 0)
      @moves << Move.new(name: 'Alternating Side Lunge', weight: 0)
      @moves << Move.new(name: 'Closed Grip Overhead Pull-Ups')
      @moves << Move.new(name: 'Single-Leg Wall Squat')
      @moves << Move.new(name: 'Deadlift Squats', weight: 0)
      @moves << Move.new(name: 'Switch Grip Pull-Ups')
      add_break
      @moves << Move.new(name: 'Three-Way Lunge')
      @moves << Move.new(name: 'Sneaky Lunge')
      @moves << Move.new(name: 'Reverse Grip Chin-Ups')
      @moves << Move.new(name: 'Chair Salutations')
      @moves << Move.new(name: 'Toe-Roll Iso Lunge', weight: 0)
      @moves << Move.new(name: 'Wide Front Pull-Ups')
      @moves << Move.new(name: 'Groucho Walk')
      @moves << Move.new(name: 'Calf Raises (Toes Out)', weight: 0)
      @moves << Move.new(name: 'Calf Raises (Feet Parallel)', weight: 0)
      @moves << Move.new(name: 'Calf Raises (Toes In)', weight: 0)
      @moves << Move.new(name: 'Closed Grip Overhand Pull-Ups')
      @moves << Move.new(name: '80/20 Siebers-Speed Squats')
      @moves << Move.new(name: 'Switch Grip Pull-Ups')
    end

    def create_kenpo_x
      @moves << Move.new(name: 'Twist and Pivot', weight: 0)
      @moves << Move.new(name: 'Twist and Pivot with Hook and Uppercut', weight: 0)
      @moves << Move.new(name: 'Jabs', weight: 0)
      @moves << Move.new(name: 'Jab-Cross', weight: 0)
      @moves << Move.new(name: 'Jab-Cross-Hook', weight: 0)
      @moves << Move.new(name: 'Jab-Cross-Hook-Uppercut', weight: 0)
      add_break
      @moves << Move.new(name: 'Step Drag, High-Low Punch', weight: 0)
      @moves << Move.new(name: 'Jab-Cross Switch', weight: 0)
      @moves << Move.new(name: 'Hook-Uppercut Switch', weight: 0)
      @moves << Move.new(name: 'Knee Kick', weight: 0)
      @moves << Move.new(name: 'Ball Kick', weight: 0)
      add_break
      @moves << Move.new(name: 'Side Kick', weight: 0)
      @moves << Move.new(name: 'Back Kick', weight: 0)
      @moves << Move.new(name: 'Three-Direction Kick', weight: 0)
      @moves << Move.new(name: 'Side Lunge with High Sword-Low Hammer', weight: 0)
      @moves << Move.new(name: 'Step-Drag-Claw-Low Punch', weight: 0)
      add_break
      @moves << Move.new(name: 'High Block', weight: 0)
      @moves << Move.new(name: 'Inward Block', weight: 0)
      @moves << Move.new(name: 'Outward Block', weight: 0)
      @moves << Move.new(name: 'Downward Block', weight: 0)
      @moves << Move.new(name: 'Star Block', weight: 0)
      add_break
      @moves << Move.new(name: 'Front Shuffle with High Block-Low Punch', weight: 0)
      @moves << Move.new(name: 'Knee-Back Kick', weight: 0)
      @moves << Move.new(name: 'Front and Back Knuckles, Ball Kick, Back Kick', weight: 0)
      @moves << Move.new(name: 'Hook, Uppercut, Low Side Kick', weight: 0)
      @moves << Move.new(name: 'Elbow Series', weight: 0)
      @moves << Move.new(name: 'Vertical Punches', weight: 0)
    end

    def create_core_synergistics
      @moves << Move.new(name: 'Stacked Foot / Staggered Hands Push-Ups')
      @moves << Move.new(name: 'Banana Rolls')
      @moves << Move.new(name: 'Leaning Crescent Lunges', weight: 0)
      @moves << Move.new(name: 'Squat Runs', weight: 0)
      @moves << Move.new(name: 'Sphinx Push-Ups')
      @moves << Move.new(name: 'Bow to Boat')
      @moves << Move.new(name: 'Low Lateral Skaters')
      @moves << Move.new(name: 'Lunge & Reach', weight: 0)
      add_break
      @moves << Move.new(name: 'Prison Cell Push-Ups')
      @moves << Move.new(name: 'Side Hip Raise')
      @moves << Move.new(name: 'Squat X-Press', weight: 0)
      @moves << Move.new(name: 'Plank to Chaturanga Run')
      @moves << Move.new(name: 'Walking Push-Ups')
      @moves << Move.new(name: 'Superman Banana')
      @moves << Move.new(name: 'Lunge Kickback Curl Press', weight: 0)
      @moves << Move.new(name: 'Towel Hoppers')
      add_break
      @moves << Move.new(name: 'Reach High & Under Push-Ups')
      @moves << Move.new(name: 'Steam Engine')
      @moves << Move.new(name: 'Dreya Rolls')
      @moves << Move.new(name: 'Plan to Chaturanga Iso')
      @moves << Move.new(name: 'Halfback')
      @moves << Move.new(name: 'Table Dip Leg Raises')
    end

    def create_chest_shoulders_triceps
      @moves << Move.new(name: 'Slow-Motion 3-in-1 Push-Ups')
      @moves << Move.new(name: 'In & Out Shoulder Flys', weight: 0)
      @moves << Move.new(name: 'Chair Dips')
      @moves << Move.new(name: 'Plange Push-Ups')
      @moves << Move.new(name: 'Pike Presses')
      @moves << Move.new(name: 'Side Tri-Rises')
      @moves << Move.new(name: 'Floor Flys (Switch every 4 reps)')
      @moves << Move.new(name: 'Scarecrows', weight: 0)
      @moves << Move.new(name: 'Overhead Triceps Extensions', weight: 0)
      @moves << Move.new(name: 'Two-Twitch Speed Push-Ups (4 Fast, 3 Slow)')
      @moves << Move.new(name: 'Y-Presses', weight: 0)
      @moves << Move.new(name: 'Lying Triceps Extensions', weight: 0)
      add_break
      @moves << Move.new(name: 'Side-to-Side Push-Ups')
      @moves << Move.new(name: 'Pour Flys', weight: 0)
      @moves << Move.new(name: 'Side-Leaning Triceps Extensions', weight: 0)
      @moves << Move.new(name: 'One-Arm Push-Ups')
      @moves << Move.new(name: 'Weighted Circles (2 X 20 reps)', weight: 0)
      @moves << Move.new(name: 'Throw the Bomb', weight: 0)
      @moves << Move.new(name: 'Clap or Plyo Push-Ups')
      @moves << Move.new(name: 'Slo-Mo Throws', weight: 0)
      @moves << Move.new(name: 'Front-to-Back Triceps Extensions', weight: 0)
      @moves << Move.new(name: 'One-Arm Balance Push-Ups')
      @moves << Move.new(name: 'Fly-Row-Presses', weight: 0)
      @moves << Move.new(name: 'Dumbbell Cross-Body Blows', weight: 0)
    end

    def create_back_and_biceps
      @moves << Move.new(name: 'Wide Front Pull-Ups')
      @moves << Move.new(name: 'Lawnmowers', weight: 0)
      @moves << Move.new(name: 'Twenty-Ones', weight: 0)
      @moves << Move.new(name: 'One-Arm Cross-Body Curls', weight: 0)
      @moves << Move.new(name: 'Switch Grip Pull-Ups (Switch every 2 reps)')
      @moves << Move.new(name: 'Elbows-Out Lawnmowers', weight: 0)
      @moves << Move.new(name: 'Standing Bicep Curls', weight: 0)
      @moves << Move.new(name: 'One-Arm Concentration Curls', weight: 0)
      @moves << Move.new(name: 'Corn Cob Pull-Ups')
      @moves << Move.new(name: 'Reverse Grip Bent-Over Rows', weight: 0)
      @moves << Move.new(name: 'Open-Arm Curls', weight: 0)
      @moves << Move.new(name: 'Static-Arm Curls', weight: 0)
      add_break
      @moves << Move.new(name: 'Towel Pull-Ups (Switch every 3)')
      @moves << Move.new(name: 'Congdon Locomotives', weight: 0)
      @moves << Move.new(name: 'Crouching Cohen Curls', weight: 0)
      @moves << Move.new(name: 'One-Arm Corkscrew Curls', weight: 0)
      @moves << Move.new(name: 'Chin-Ups')
      @moves << Move.new(name: 'Seated Bent-Over Back Flys', weight: 0)
      @moves << Move.new(name: 'Curl-Up/Hammer Downs', weight: 0)
      @moves << Move.new(name: 'Hammer Curls', weight: 0)
      @moves << Move.new(name: 'Max Rep Pull-Ups')
      @moves << Move.new(name: 'Superman (6 x 10 seconds)')
      @moves << Move.new(name: 'In-Out Hammer Curls', weight: 0)
      @moves << Move.new(name: 'Strip-Set Curls (round 1 of 4)', weight: 0)
      @moves << Move.new(name: 'Strip-Set Curls (round 2 of 4)', weight: 0)
      @moves << Move.new(name: 'Strip-Set Curls (round 3 of 4)', weight: 0)
      @moves << Move.new(name: 'Strip-Set Curls (round 4 of 4)', weight: 0)
    end

    def create_cardio_x
      @moves << Move.new(name: 'Sun Salutations')
      @moves << Move.new(name: 'Runner Poses')
      @moves << Move.new(name: 'Warrior One')
      @moves << Move.new(name: 'Warrior Two')
      @moves << Move.new(name: 'Reverse Warrior')
      add_break
      @moves << Move.new(name: 'Ball Kicks')
      @moves << Move.new(name: 'Hook-Uppercut-Side Kick')
      @moves << Move.new(name: 'Front & Back Knuckles-Ball Kick-Back Kick')
      @moves << Move.new(name: 'Jab-Cross-Hook-Uppercut')
      @moves << Move.new(name: 'Three Direction Kicks')
      add_break
      @moves << Move.new(name: 'Airborne Heisman')
      @moves << Move.new(name: 'Swing Kicks')
      @moves << Move.new(name: 'Jump Shots')
      @moves << Move.new(name: 'Tires')
      @moves << Move.new(name: 'Wacky Jacks')
      @moves << Move.new(name: 'Airborne Heisman')
      @moves << Move.new(name: 'Swing Kicks')
      @moves << Move.new(name: 'Jump Shots')
      @moves << Move.new(name: 'Tires')
      @moves << Move.new(name: 'Wacky Jacks')
      add_break
      @moves << Move.new(name: 'Squat X Press')
      @moves << Move.new(name: 'Steam Engine')
      @moves << Move.new(name: 'Dreya Roll')
      @moves << Move.new(name: 'Squat Run')
      @moves << Move.new(name: 'Superman Banana')
    end

    def create_ab_ripper_x
      @moves << Move.new(name: 'In & Outs')
      @moves << Move.new(name: 'Seated Bicycle')
      @moves << Move.new(name: 'Reverse Bicycle')
      @moves << Move.new(name: 'Crunchy Frogs')
      @moves << Move.new(name: 'Crossed Leg/Wide Leg Sit-Ups')
      @moves << Move.new(name: 'Fifer Scissors')
      @moves << Move.new(name: "Hip Rock 'N Raise")
      @moves << Move.new(name: 'Pulse-Ups (Heels to the Heavens)')
      @moves << Move.new(name: 'Roll-Up/V-Up Combo')
      @moves << Move.new(name: 'Oblique V-Ups')
      @moves << Move.new(name: 'Leg Climbers')
      @moves << Move.new(name: 'Mason Twist')
    end

    def create_rest_stretch
      @moves << Move.new(name: 'Sun Salutations')
      @moves << Move.new(name: 'Neck Stretch')
      @moves << Move.new(name: 'Back Up the Car')
      @moves << Move.new(name: 'Head Rolls')
      @moves << Move.new(name: 'Expand Chest')
      @moves << Move.new(name: 'Shoulder Stretch')
      @moves << Move.new(name: 'Forearm Flex')
      @moves << Move.new(name: 'Dreya Stretch')
      @moves << Move.new(name: 'Cat Stretch')
      @moves << Move.new(name: 'Glute Stretch')
      @moves << Move.new(name: 'Arm Circles')
      @moves << Move.new(name: 'Shoulder/Triceps Combo')
      @moves << Move.new(name: 'Hamstring Stretch')
      @moves << Move.new(name: 'Camel')
      @moves << Move.new(name: 'Roller')
      @moves << Move.new(name: 'Shoulder Stand')
      @moves << Move.new(name: 'Back Hero')
      @moves << Move.new(name: 'Quad Stretch')
      @moves << Move.new(name: 'Frog')
      @moves << Move.new(name: 'Seated Stretch')
      @moves << Move.new(name: 'Standing Hamstring')
      @moves << Move.new(name: 'Downward Dog')
      @moves << Move.new(name: 'Upward Dog')
      @moves << Move.new(name: 'Child’s Pose')
    end

    def load_moves
      case @name
      when Routine::CHEST_AND_BACK              then create_chest_and_back
      when Routine::PLYOMETRICS                 then create_plyometrics
      when Routine::SHOULDERS_AND_ARMS          then create_shoulders_and_arms
      when Routine::YOGA_X                      then create_yoga_x
      when Routine::LEGS_AND_BACK               then create_legs_and_back
      when Routine::KENPO_X                     then create_kenpo_x
      when Routine::CORE_SYNERGISTICS           then create_core_synergistics
      when Routine::CHEST_SHOULDERS_AND_TRICEPS then create_chest_shoulders_triceps
      when Routine::BACK_AND_BICEPS             then create_back_and_biceps
      when Routine::CARDIO_X                    then create_cardio_x
      when Routine::AB_RIPPER_X                 then create_ab_ripper_x
      when Routine::REST_STRETCH                then create_rest_stretch
      end
    end
  end
end
