18.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "1234",
    birthdate: "1984-11-24",
    basic_start: false)
end

User.third.update_attribute(:basic_start, true)

User.find(1).update_attribute(:days_of_7_vig, 0)
User.find(1).update_attribute(:mins_vig_per_day, 0)
User.find(1).update_attribute(:days_of_7_mod, 0)
User.find(1).update_attribute(:mins_mod_per_day, 0)
User.find(1).update_attribute(:days_of_7_walk, 0)
User.find(1).update_attribute(:mins_walk_per_day, 0)
User.find(1).update_attribute(:mins_weekday_sitting, 0)

User.find(2).update_attribute(:days_of_7_vig, 0)
User.find(2).update_attribute(:mins_vig_per_day, 0)
User.find(2).update_attribute(:days_of_7_mod, 3)
User.find(2).update_attribute(:mins_mod_per_day, 30)
User.find(2).update_attribute(:days_of_7_walk, 4)
User.find(2).update_attribute(:mins_walk_per_day, 40)
User.find(2).update_attribute(:mins_weekday_sitting, 400)

User.find(3).update_attribute(:days_of_7_vig, 2)
User.find(3).update_attribute(:mins_vig_per_day, 40)
User.find(3).update_attribute(:days_of_7_mod, 3)
User.find(3).update_attribute(:mins_mod_per_day, 60)
User.find(3).update_attribute(:days_of_7_walk, 2)
User.find(3).update_attribute(:mins_walk_per_day, 20)
User.find(3).update_attribute(:mins_weekday_sitting, 350)

User.find(4).update_attribute(:days_of_7_vig, 0)
User.find(4).update_attribute(:mins_vig_per_day, 0)
User.find(4).update_attribute(:days_of_7_mod, 0)
User.find(4).update_attribute(:mins_mod_per_day, 0)
User.find(4).update_attribute(:days_of_7_walk, 3)
User.find(4).update_attribute(:mins_walk_per_day, 20)
User.find(4).update_attribute(:mins_weekday_sitting, 600)

User.find(5).update_attribute(:days_of_7_vig, 1)
User.find(5).update_attribute(:mins_vig_per_day, 30)
User.find(5).update_attribute(:days_of_7_mod, 4)
User.find(5).update_attribute(:mins_mod_per_day, 60)
User.find(5).update_attribute(:days_of_7_walk, 3)
User.find(5).update_attribute(:mins_walk_per_day, 40)
User.find(5).update_attribute(:mins_weekday_sitting, 500)

User.find(6).update_attribute(:days_of_7_vig, 0)
User.find(6).update_attribute(:mins_vig_per_day, 0)
User.find(6).update_attribute(:days_of_7_mod, 2)
User.find(6).update_attribute(:mins_mod_per_day, 30)
User.find(6).update_attribute(:days_of_7_walk, 5)
User.find(6).update_attribute(:mins_walk_per_day, 60)
User.find(6).update_attribute(:mins_weekday_sitting, 700)

User.find(7).update_attribute(:days_of_7_vig, 0)
User.find(7).update_attribute(:mins_vig_per_day, 0)
User.find(7).update_attribute(:days_of_7_mod, 2)
User.find(7).update_attribute(:mins_mod_per_day, 30)
User.find(7).update_attribute(:days_of_7_walk, 2)
User.find(7).update_attribute(:mins_walk_per_day, 20)
User.find(7).update_attribute(:mins_weekday_sitting, 550)

User.find(8).update_attribute(:days_of_7_vig, 0)
User.find(8).update_attribute(:mins_vig_per_day, 0)
User.find(8).update_attribute(:days_of_7_mod, 0)
User.find(8).update_attribute(:mins_mod_per_day, 0)
User.find(8).update_attribute(:days_of_7_walk, 0)
User.find(8).update_attribute(:mins_walk_per_day, 0)
User.find(8).update_attribute(:mins_weekday_sitting, 800)

User.find(9).update_attribute(:days_of_7_vig, 0)
User.find(9).update_attribute(:mins_vig_per_day, 0)
User.find(9).update_attribute(:days_of_7_mod, 2)
User.find(9).update_attribute(:mins_mod_per_day, 40)
User.find(9).update_attribute(:days_of_7_walk, 4)
User.find(9).update_attribute(:mins_walk_per_day, 30)
User.find(9).update_attribute(:mins_weekday_sitting, 650)

User.find(10).update_attribute(:days_of_7_vig, 2)
User.find(10).update_attribute(:mins_vig_per_day, 40)
User.find(10).update_attribute(:days_of_7_mod, 2)
User.find(10).update_attribute(:mins_mod_per_day, 60)
User.find(10).update_attribute(:days_of_7_walk, 3)
User.find(10).update_attribute(:mins_walk_per_day, 30)
User.find(10).update_attribute(:mins_weekday_sitting, 400)

User.find(11).update_attribute(:days_of_7_vig, 1)
User.find(11).update_attribute(:mins_vig_per_day, 40)
User.find(11).update_attribute(:days_of_7_mod, 5)
User.find(11).update_attribute(:mins_mod_per_day, 60)
User.find(11).update_attribute(:days_of_7_walk, 1)
User.find(11).update_attribute(:mins_walk_per_day, 120)
User.find(11).update_attribute(:mins_weekday_sitting, 880)

User.find(12).update_attribute(:days_of_7_vig, 0)
User.find(12).update_attribute(:mins_vig_per_day, 0)
User.find(12).update_attribute(:days_of_7_mod, 2)
User.find(12).update_attribute(:mins_mod_per_day, 60)
User.find(12).update_attribute(:days_of_7_walk, 2)
User.find(12).update_attribute(:mins_walk_per_day, 50)
User.find(12).update_attribute(:mins_weekday_sitting, 700)

User.find(13).update_attribute(:days_of_7_vig, 0)
User.find(13).update_attribute(:mins_vig_per_day, 0)
User.find(13).update_attribute(:days_of_7_mod, 0)
User.find(13).update_attribute(:mins_mod_per_day, 0)
User.find(13).update_attribute(:days_of_7_walk, 1)
User.find(13).update_attribute(:mins_walk_per_day, 30)
User.find(13).update_attribute(:mins_weekday_sitting, 1100)

User.find(14).update_attribute(:days_of_7_vig, 0)
User.find(14).update_attribute(:mins_vig_per_day, 0)
User.find(14).update_attribute(:days_of_7_mod, 4)
User.find(14).update_attribute(:mins_mod_per_day, 40)
User.find(14).update_attribute(:days_of_7_walk, 4)
User.find(14).update_attribute(:mins_walk_per_day, 60)
User.find(14).update_attribute(:mins_weekday_sitting, 550)

User.find(15).update_attribute(:days_of_7_vig, 0)
User.find(15).update_attribute(:mins_vig_per_day, 0)
User.find(15).update_attribute(:days_of_7_mod, 2)
User.find(15).update_attribute(:mins_mod_per_day, 60)
User.find(15).update_attribute(:days_of_7_walk, 5)
User.find(15).update_attribute(:mins_walk_per_day, 40)
User.find(15).update_attribute(:mins_weekday_sitting, 850)

User.find(16).update_attribute(:days_of_7_vig, 0)
User.find(16).update_attribute(:mins_vig_per_day, 0)
User.find(16).update_attribute(:days_of_7_mod, 3)
User.find(16).update_attribute(:mins_mod_per_day, 30)
User.find(16).update_attribute(:days_of_7_walk, 3)
User.find(16).update_attribute(:mins_walk_per_day, 60)
User.find(16).update_attribute(:mins_weekday_sitting, 750)

User.find(17).update_attribute(:days_of_7_vig, 3)
User.find(17).update_attribute(:mins_vig_per_day, 40)
User.find(17).update_attribute(:days_of_7_mod, 4)
User.find(17).update_attribute(:mins_mod_per_day, 60)
User.find(17).update_attribute(:days_of_7_walk, 1)
User.find(17).update_attribute(:mins_walk_per_day, 20)
User.find(17).update_attribute(:mins_weekday_sitting, 950)

User.find(18).update_attribute(:days_of_7_vig, 0)
User.find(18).update_attribute(:mins_vig_per_day, 0)
User.find(18).update_attribute(:days_of_7_mod, 0)
User.find(18).update_attribute(:mins_mod_per_day, 0)
User.find(18).update_attribute(:days_of_7_walk, 2)
User.find(18).update_attribute(:mins_walk_per_day, 60)
User.find(18).update_attribute(:mins_weekday_sitting, 1000)

User.create(
  first_name: "Peter",
  last_name: "Manetta",
  email: "pmanetta@gmail.com",
  admin: true,
  password: "1234",
  birthdate: "1984-11-24",
  basic_start: false)

User.create(
  first_name: "Charlotte",
  last_name: "Manetta",
  email: "cjmanetta@gmail.com",
  admin: true,
  password: "1234",
  birthdate: "1984-11-24",
  basic_start: false)


exercise_array = [{name: "Chair Pose Cycle",legacy_id: "Y0001",legacy_prereqs: "T0002",description: "Start standing in balance pose /slowly form chair pose with arms up, deep squat,  back straigt and angled forward/Once pose is established, cycle slowlybetween deep pose and standing every 20 seconds /deep breathing throughout ",exertion: "3",technicality: "3",equipment: nil,flexibility: "1",balance: "3",strength: "3",breathing: "true",muscle_1: "Quadriceps",muscle_2: "Shoulders",muscle_3: "Abdominals",muscle_stretched: "",origin: "Yoga"},
{name: "Leg Shake",legacy_id: "M0001",legacy_prereqs: "M0007",description: "Simple exercise meant to introduce some irreverence /start standing in balance pose /Balance on one leg, shake the other out (not too vigorousl) /Cycle alternating legs",exertion: "1",technicality: "2",equipment: nil,flexibility: "2",balance: "4",strength: "0",breathing: "",muscle_1: "Quadriceps",muscle_2: "Hamstrings",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Neck Role",legacy_id: "M0002",legacy_prereqs: "M0007",description: "Start standing in balance pose /put rolled up jacket or Towel behind neck for support (if desired) /role neck around 3-4 times counter-clockwise, then clockwise, maintain balance pose and bend knees a little bit more (if desired) /repeat till time",exertion: "1",technicality: "1",equipment: nil,flexibility: "3",balance: "1",strength: "0",breathing: "",muscle_1: "Quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Windmills ",legacy_id: "M0003",legacy_prereqs: "M0007",description: "Start standing in balance pose /raise arms perpendicular to body and  /start slowly windmilling both arms forward or backward in narrow circles slowly progressing to wider circles /change direction (forward, backward) every 20 seconds ",exertion: "2",technicality: "2",equipment: nil,flexibility: "1",balance: "1",strength: "2",breathing: "",muscle_1: "Shoulders",muscle_2: "Quadriceps",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Windmills Squat",legacy_id: "M0004",legacy_prereqs: "T0001",description: "Start standing in balance pose /Attain a half squat position /execute windmills M0003/ After 40 seconds (including direction change), back to balance pose for 10 seconds /cycle",exertion: "3",technicality: "2",equipment: nil,flexibility: "1",balance: "2",strength: "3",breathing: "",muscle_1: "Quadriceps",muscle_2: "Shoulders",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Windmill Lunge",legacy_id: "M0005",legacy_prereqs: "T0002",description: "Start in standing balance pose /lunge forward with one or the other leg /in lunge pose (with core engaged, etc), do windmills from M0003 /at direction change, back to standing balance pose, then lunge with other leg and do windmills in other direction (backward or forward)",exertion: "4",technicality: "3",equipment: nil,flexibility: "2",balance: "4",strength: "3",breathing: "",muscle_1: "Quadriceps",muscle_2: "Shoulders",muscle_3: "Abdominals",muscle_stretched: "",origin: "other"},
{name: "Arm High Stretch",legacy_id: "M0006",legacy_prereqs: "M0007",description: "Start in standing balance pose /bend knees a bit more /stretch both arms over head /grab onewrist with the other hand and lean to the side of the grabbing hand while pulling up on the wrist /breath a couple times here then exhale back up /do the other side /repeat until time",exertion: "2",technicality: "2",equipment: nil,flexibility: "4",balance: "2",strength: "1",breathing: "",muscle_1: "Quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "Latissimus Dorsi",origin: "other"},
{name: "Foot Sweep",legacy_id: "J0001",legacy_prereqs: "J0004",description: "Start in standing balance pose /bend knees a bit more /hold arms in-front of body as if gripping an opponents lapels /sweep one foot in front of the other, with the blade of the foot dragging barely on the ground /repeat each leg until time",exertion: "3",technicality: "3",equipment: nil,flexibility: "1",balance: "3",strength: "1",breathing: "",muscle_1: "Quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Judo"},
{name: "Balance Pose",legacy_id: "M0007",legacy_prereqs: "",description: "Intro to starting position for most exercises /stand with knees slightly bent, feet shoulder distance apart, hips forward (core engaged), arms bent up slightly for balance /instruct to maintain knee bend, engage and unengage core to familiarize with feeling",exertion: "1",technicality: "1",equipment: nil,flexibility: "1",balance: "2",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Half Squats",legacy_id: "T0001",legacy_prereqs: "T0003",description: "Start standing in balance pose /feet hip width apart, toes forward, arms up for balance /keeping knees from going over toes, bend knees halfway between standing and thighs parralel to ground, butt out /cylcle through squats, breath out squatting, in standing slowly until time",exertion: "2",technicality: "2",equipment: nil,flexibility: "1",balance: "2",strength: "2",breathing: "",muscle_1: "Quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Personal Training"},
{name: "Squats",legacy_id: "T0002",legacy_prereqs: "T0001, M0027",description: "Start in standing balance pose /execute regular squats /include breaks",exertion: "4",technicality: "3",equipment: nil,flexibility: "1",balance: "2",strength: "3",breathing: "",muscle_1: "Quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Personal Training"},
{name: "Intro to Squat",legacy_id: "T0003",legacy_prereqs: "M0007",description: "Start standing in balance pose /instruct proper squat technique /highlight proper angles, foot position, butt position, etc.",exertion: "2",technicality: "2",equipment: nil,flexibility: "1",balance: "1",strength: "2",breathing: "",muscle_1: "Quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Personal Training"},
{name: "One-leg reaches",legacy_id: "T0004",legacy_prereqs: "H0005",description: "Start in standing balance pose /place hands on hips /balance on one leg /raise the other with knee bent so femur is as close parralel to ground as you can get /extend knee, then retract /rotate leg to side, extend knee, then retract /reach leg back behind you, then return to standing /repeat with other leg /cycle until time",exertion: "3",technicality: "3",equipment: nil,flexibility: "3",balance: "4",strength: "2",breathing: "",muscle_1: "abductor",muscle_2: "glutes",muscle_3: "",muscle_stretched: "",origin: "Personal Training"},
{name: "One-leg stand",legacy_id: "H0005",legacy_prereqs: "M0007",description: "Start in standing balance pose /lift one leg up wit knee bent as high as you can /hold for 20 secnds /return to standing /repeat with other leg /cycle until time",exertion: "2",technicality: "1",equipment: nil,flexibility: "1",balance: "3",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Physical Therapy"},
{name: "Warrior One",legacy_id: "Y0002",legacy_prereqs: "T0004",description: "Start in standing balance pose /cycle through warrior one poses on each side until time, including breathing and back bend",exertion: "3",technicality: "3",equipment: nil,flexibility: "3",balance: "3",strength: "2",breathing: "true",muscle_1: "quadriceps",muscle_2: "glutes",muscle_3: "",muscle_stretched: "",origin: "Yoga"},
{name: "Warrior Two",legacy_id: "Y0003",legacy_prereqs: "T0004",description: "Start in standing balance pose /cycle through warrior two poses on each side until time, including breathing ",exertion: "4",technicality: "3",equipment: nil,flexibility: "3",balance: "3",strength: "2",breathing: "",muscle_1: "quadriceps",muscle_2: "glutes",muscle_3: "",muscle_stretched: "",origin: "Yoga"},
{name: "Standing Pigeon",legacy_id: "Y0005",legacy_prereqs: "Y0001",description: "Start in standing balance pose /move to chair pose without raising arms /put one leg on top of the other, so that outside of lower lifted leg is resting just above the knee of standing leg /bend standing knee into proper one-legged squat, as deep as possible /keep arms in balance pose position /back to standing, then other leg, cycle until time",exertion: "3",technicality: "4",equipment: nil,flexibility: "4",balance: "4",strength: "3",breathing: "",muscle_1: "quadriceps",muscle_2: "glutes",muscle_3: "",muscle_stretched: "IT Bands",origin: "Yoga"},
{name: "Standing Quad Stretch",legacy_id: "M0008",legacy_prereqs: "H0005",description: "Start in standing balance pose /bend one leg at knee and catch with same side hand /pull foot as close to body (behind, not to the side) /use both hands if needed /cycle through with other side until time",exertion: "2",technicality: "2",equipment: nil,flexibility: "4",balance: "3",strength: "2",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "quadriceps",origin: "other"},
{name: "Standing Hamstring Curls",legacy_id: "T0005",legacy_prereqs: "H0005",description: "Start in standing balance pose /stand on one leg /bend the knee of lifted leg so lower leg goes as high as it can behind body, keeping upper leg parralel with that of standing leg /do 10-20 sets /cycle with other leg until time",exertion: "2",technicality: "1",equipment: nil,flexibility: "2",balance: "3",strength: "2",breathing: "",muscle_1: "Hamstrings",muscle_2: "quadriceps",muscle_3: "",muscle_stretched: "",origin: "Personal Training"},
{name: "Behind back shoulder stretch",legacy_id: "M0008",legacy_prereqs: "M0007",description: "Start in standing balance pose /lift both arms over head /grab one elbow with the other hand and pull towards head or, if possible, behind head /hold stretch for 15 seconds /cycle through with other side untiltime",exertion: "1",technicality: "2",equipment: nil,flexibility: "4",balance: "1",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "shoulders",origin: "other"},
{name: "Upper back & neck releiver",legacy_id: "M0009",legacy_prereqs: "M0007",description: "Start in standing balance pose with feet double hip distance /lift both arms over head and stretch strait up and hold for 15 seconds /bend all the way down so head is hanging limp between legs /cross arms below head so they are not touching the ground /hold for 20 seconds /stand up slowly breathing VERY deeply to prevent light-headedness /cycle through till time",exertion: "2",technicality: "2",equipment: nil,flexibility: "2",balance: "2",strength: "1",breathing: "true",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "Adductor",origin: "other"},
{name: "Basic hamstring stretch",legacy_id: "T0006",legacy_prereqs: "M0016",description: "Start in standing balance pose /place one straight out infront, heal resting on ground /place hands on top of straight leg /proper squat motion down (with butt out and back straight) until feeling the stretch /stand then cycle with other leg until time",exertion: "1",technicality: "2",equipment: nil,flexibility: "4",balance: "2",strength: "1",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "hamstrings",origin: "Personal Training"},
{name: "Leg-cross hamstring stretch",legacy_id: "M0011",legacy_prereqs: "T0006",description: "Start in standing balance pose /cross one leg in front of other, keeping it touching the leg and both legs slightly bent /keeping back strait, bend down until stretch /can rest hands on upper leg for support / touch toes if possible /stand up and cycle through until time",exertion: "2",technicality: "2",equipment: nil,flexibility: "4",balance: "3",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "hamstrings",origin: "other"},
{name: "One-leg roundhouse?",legacy_id: "J0002",legacy_prereqs: "H0005",description: "Start in standing balance pose /lift one leg, knee bent, as high as you can, angled across the body /slowly rotate the him so the leg moves outward to the side of the body /extend knee and land the foot behind the body /this should be one fluid motion /return to standing balance pose and cycle through with other leg until time ",exertion: "3",technicality: "3",equipment: nil,flexibility: "3",balance: "5",strength: "2",breathing: "",muscle_1: "abductor",muscle_2: "",muscle_3: "",muscle_stretched: "adductor",origin: "Judo"},
{name: "Standing Wrist Stretches",legacy_id: "M0012",legacy_prereqs: "M0007",description: "Start in standing balance pose /hold arms so hands are a couple feet from face /grab one hand with the other, close to the wrist joint, in such a way that you can twist in one directoin /hold stretch /then grab differently and twist and hold in the other direction /put fingers on fingers with hands at perpindicular angle and stretch hand back /then stretch hand forward /repeat with other wrist /before time, shake hands out",exertion: "1",technicality: "3",equipment: nil,flexibility: "4",balance: "1",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Judo"},
{name: "Tai Chi Starting Form",legacy_id: "C0001",legacy_prereqs: "M0007",description: "Start standing in balance pose /SLOWLY with arms at sides lift oneheel, then whole foot with bent knee 6 inches off ground /with lifted leg, step out somewhat behind body then slowly put foot down, toes first, then heel, so foot line is perpindicular to other foot (you will eventually be turning 90 degrees) /keep shoulders squared and arms relaxed at sides /once facing new direction, slowly raise wrists to shoulder height, keeping hands and wrists relaxed and elbows slightly bent /lower forearms and bend knees at same time until in half squat, keep arms engaged so forearms are parallel to ground, elbows back toward body /repeat with other leg",exertion: "2",technicality: "4",equipment: nil,flexibility: "1",balance: "1",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Parting the Horse's Mane 1",legacy_id: "C0002",legacy_prereqs: "C0001",description: "Start standing in balance pose /cycle through first parts of movement / focus on form instruction /this should repeat for learning purposes",exertion: "2",technicality: "4",equipment: nil,flexibility: "1",balance: "2",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Parting the Horse's Mane 2",legacy_id: "C0003",legacy_prereqs: "C0002",description: "Start standing in balance pose /cycle through leg transitions part of movement / focus on form /this should repeat for learning purposes",exertion: "2",technicality: "4",equipment: nil,flexibility: "2",balance: "2",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Parting the Horse's Mane 3",legacy_id: "C0004",legacy_prereqs: "C0003",description: "Start standing in balance pose /cycle through form at normal pace (ostensibly, client has learned form now)/ focus on form /this should repeat for learning purposes",exertion: "2",technicality: "4",equipment: nil,flexibility: "2",balance: "3",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Stork Spreads its Wings 1",legacy_id: "C0005",legacy_prereqs: "C0001",description: "Start standing in balance pose /cycle through movement, focus on form /this should repeat for learning purposes",exertion: "2",technicality: "4",equipment: nil,flexibility: "1",balance: "2",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Stork Spreads its Wings 2",legacy_id: "C0006",legacy_prereqs: "C0005",description: "Start standing in balance pose /cycle through movement at normal pace /",exertion: "3",technicality: "4",equipment: nil,flexibility: "2",balance: "2",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Playing the Lute 1",legacy_id: "C0007",legacy_prereqs: "C0001",description: "Start standing in balance pose /cycle through first parts of movement / focus on form instruction /this should repeat for learning purposes",exertion: "2",technicality: "4",equipment: nil,flexibility: "1",balance: "2",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Playing the Lute 2",legacy_id: "C0008",legacy_prereqs: "C0007",description: "Start standing in balance pose /cycle through movement at normal pace ",exertion: "3",technicality: "4",equipment: nil,flexibility: "2",balance: "3",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Single Whip 1",legacy_id: "C0009",legacy_prereqs: "C0001",description: "Start standing in balance pose /cycle through first parts of movement / focus on form instruction ",exertion: "2",technicality: "4",equipment: nil,flexibility: "1",balance: "2",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Single Whip 2",legacy_id: "C0010",legacy_prereqs: "C0009",description: "Start standing in balance pose /cycle through second parts of movement / focus on form instruction /this should repeat for learning purposes",exertion: "2",technicality: "4",equipment: nil,flexibility: "2",balance: "2",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Single Whip 3",legacy_id: "C0011",legacy_prereqs: "C0010",description: "Start standing in balance pose /cycle through movement at normal pace ",exertion: "3",technicality: "4",equipment: nil,flexibility: "2",balance: "3",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Full and Empty",legacy_id: "C0012",legacy_prereqs: "C0001",description: "Start standing in balance pose with arms at sides /inhale and raise arms, rounded, as if carrying a yoga ball /imagine self filling up with bright light or colorful liquid /exhale, lowering arms and imagine emptying self of light.liquid /repeat until time",exertion: "1",technicality: "2",equipment: nil,flexibility: "1",balance: "1",strength: "1",breathing: "true",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Horse Stance",legacy_id: "K0001",legacy_prereqs: "T0001",description: "stand with your feet wider then shoulder width apart, with the feet parallel / and then you bend your knees and lower your body down /include instruction on hand motions or other motions",exertion: "3",technicality: "2",equipment: nil,flexibility: "1",balance: "2",strength: "1",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Kung Fu"},
{name: "Forward Stance",legacy_id: "K0002",legacy_prereqs: "T0001",description: "The weight is on the front leg. The front knee is bent and the back leg is straigt / include instruction on hand motions or other motions",exertion: "3",technicality: "2",equipment: nil,flexibility: "1",balance: "2",strength: "1",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Kung Fu"},
{name: "Cat stance",legacy_id: "K0003",legacy_prereqs: "K0002",description: "All the weight is on the back leg. The front leg rests on the toe or the ball of the foot. The front foot resembles the way a cat will put its paw out to take a step, with no weight on it, and this is how we get the name /can do slow, controled kicks /switch sides until time",exertion: "3",technicality: "3",equipment: nil,flexibility: "2",balance: "4",strength: "1",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Kung Fu"},
{name: "Twist Stance with crouch",legacy_id: "K0004",legacy_prereqs: "K0003",description: "The front foot is turned outward and the back foot rests on the ball of the foot. the stance can either be crouched down like in the picture above or higher /move up and down, putting different feet forward, until time",exertion: "4",technicality: "3",equipment: nil,flexibility: "2",balance: "4",strength: "2",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Kung Fu"},
{name: "Crane Stance",legacy_id: "K0005",legacy_prereqs: "K0002",description: "stand balanced on one leg /raise other leg so knee is high against torso /raise arms, one fist up, the other out to the side / can include high kicks /switch sides until time",exertion: "3",technicality: "3",equipment: nil,flexibility: "2",balance: "4",strength: "2",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Kung Fu"},
{name: "Squats with Arm Row",legacy_id: "M0013",legacy_prereqs: "T0001",description: "Start standing in balance pose /proper squat down and put arms straight out in front, with hands in a grip (as if holding handles) /straigten up and pull arms back so you can feel your upper back muscles squeeeze the spine /cycle SLOWLY until time",exertion: "3",technicality: "2",equipment: nil,flexibility: "1",balance: "2",strength: "3",breathing: "",muscle_1: "quadriceps",muscle_2: "latissimus dorsi",muscle_3: "shoulders",muscle_stretched: "",origin: "other"},
{name: "One-leg heal raises",legacy_id: "M0015",legacy_prereqs: "T0004, M0017, M0030 ",description: "Start standing in balance pose /balance on one leg /do heal raise repetitions (5-10) then switch legs / can use toe of raised foot for balance /rest and repeat until time",exertion: "2",technicality: "4",equipment: nil,flexibility: "2",balance: "5",strength: "4",breathing: "",muscle_1: "Calves",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Circling Hands",legacy_id: "C0013",legacy_prereqs: "C0001",description: "Start standing in balance pose /one leg out a few feet out /hands about a foot apart make a circling motion, so that circle is parallel to the ground /switch sides and repeat until time",exertion: "2",technicality: "2",equipment: nil,flexibility: "1",balance: "1",strength: "1",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Tai Chi"},
{name: "Chair pose twists",legacy_id: "Y0006",legacy_prereqs: "Y0001",description: "Start standing in balance pose /move to chair pose /hands in prayer postion /twist so one elbow is on side of opposite knee /hold for a while then switch /back and forth till time",exertion: "4",technicality: "4",equipment: nil,flexibility: "3",balance: "4",strength: "3",breathing: "true",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "Latissimus Dorsi",origin: "Yoga"},
{name: "Warrior One Twist",legacy_id: "Y0007",legacy_prereqs: "Y0002",description: "Start standing in balance pose /move to warrior one /put hands in prayer position /twist so one elbow is on outside of opposoite knee /cycle to other side /repeat until time",exertion: "4",technicality: "4",equipment: nil,flexibility: "4",balance: "5",strength: "3",breathing: "true",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "Latissimus Dorsi",origin: "Yoga"},
{name: "Twisting Triangle",legacy_id: "Y0008",legacy_prereqs: "Y0002,Y0003",description: "Start standing in balance pose /get in triangle position with arms out /dip to one side, try to get hand on foot /hold for 15-30 seconds /dip to other side",exertion: "3",technicality: "3",equipment: nil,flexibility: "3",balance: "4",strength: "2",breathing: "true",muscle_1: "",muscle_2: "abdominals",muscle_3: "",muscle_stretched: "",origin: "Yoga"},
{name: "Half Moon",legacy_id: "Y0009",legacy_prereqs: "M0007",description: "Start standing in balance pose /raise arms straight above  head, as high as they will go/ slowly bend to one side and hold for 20-30 seconds /back to straight, hold for 10-20 seconds /bend to other side / cycle until time",exertion: "1",technicality: "1",equipment: nil,flexibility: "3",balance: "3",strength: "2",breathing: "true",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "abdominals",origin: "Yoga"},
{name: "Balance Shift",legacy_id: "M0016",legacy_prereqs: "M0007",description: "Start standing in balance pose /spread legs wider than shoulders /shift weight to one leg and slightly bend /hold for 20-30 seconds /shift to other leg and hold /cycle until time",exertion: "2",technicality: "1",equipment: nil,flexibility: "1",balance: "2",strength: "1",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Heal Raises",legacy_id: "M0017",legacy_prereqs: "M0029",description: "Start standing in balance pose /raise up on both toes /hold for ten seconds /go back down then repeat until time",exertion: "1",technicality: "1",equipment: nil,flexibility: "2",balance: "3",strength: "3",breathing: "",muscle_1: "calves",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Balance Back Twist",legacy_id: "M0018",legacy_prereqs: "M0007",description: "Start standing in balance pose /put one leg in front of the other, roughly a couple feet apart, feet facing forward /twsit upper body placing forward foot hand on opposite hip, twisting neck to look behind /repeat other side and cycle until time",exertion: "1",technicality: "2",equipment: nil,flexibility: "3",balance: "3",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "abdominals",origin: "other"},
{name: "Balance Spins",legacy_id: "M0019",legacy_prereqs: "M0007",description: "Start standing in balance pose /SLOWLY /step one foot over and in front of the other a cuple feet, with toe pointed 45 degrees out /bring other foot back behind forward foot turning body with that /then repeat first footfall /Go slowly, and focus on maintaining engaged core ",exertion: "1",technicality: "3",equipment: nil,flexibility: "1",balance: "4",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Osoto Gari Sweep",legacy_id: "J0003",legacy_prereqs: "J0002, J0004",description: "Start standing in balance pose /assume basic judo pose /excecute osoto gari sweep five times on one side, then five on the other /cycle until time",exertion: "3",technicality: "4",equipment: nil,flexibility: "2",balance: "4",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Judo"},
{name: "Half Lunge",legacy_id: "M0020",legacy_prereqs: "M0016",description: "Start standing in balance pose /lunge forward partway with one leg /hold for 30 seconds /cycle with other side until time",exertion: "3",technicality: "2",equipment: nil,flexibility: "1",balance: "3",strength: "1",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Balance Pose Open Breath",legacy_id: "M0021",legacy_prereqs: "M0007",description: " Start standing in balance pose /on inhale raise arms above head as high as you can /on exhale lower in a circular motion /maintain balance pose with a bit more bent knee and cycle through till time",exertion: "1",technicality: "1",equipment: nil,flexibility: "1",balance: "1",strength: "1",breathing: "true",muscle_1: "shoulders",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Burpees!",legacy_id: "T0007",legacy_prereqs: "T0008, T0009, T0010",description: "",exertion: "5",technicality: "2",equipment: nil,flexibility: "1",balance: "3",strength: "4",breathing: "",muscle_1: "Pectorals",muscle_2: "quadriceps",muscle_3: "calves",muscle_stretched: "",origin: "Personal Training"},
{name: "Jumps! Side-to-side",legacy_id: "T0008",legacy_prereqs: "T0002",description: "",exertion: "4",technicality: "2",equipment: nil,flexibility: "1",balance: "3",strength: "3",breathing: "",muscle_1: "quadriceps",muscle_2: "calves",muscle_3: "",muscle_stretched: "",origin: "Personal Training"},
{name: "Jumps! Forward-and-Back",legacy_id: "T0009",legacy_prereqs: "T0002",description: "",exertion: "4",technicality: "2",equipment: nil,flexibility: "1",balance: "3",strength: "3",breathing: "",muscle_1: "quadriceps",muscle_2: "calves",muscle_3: "",muscle_stretched: "",origin: "Personal Training"},
{name: "Pushups",legacy_id: "T0010",legacy_prereqs: "",description: "",exertion: "4",technicality: "2",equipment: nil,flexibility: "1",balance: "1",strength: "4",breathing: "",muscle_1: "Pectorals",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Personal Training"},
{name: "Basic Judo Pose",legacy_id: "J0004",legacy_prereqs: "M0007",description: "",exertion: "1",technicality: "2",equipment: nil,flexibility: "1",balance: "3",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Judo"},
{name: "Side Leg lean-bend",legacy_id: "M0022",legacy_prereqs: "M0016",description: "Start in standing balance pose /spread legs wider (double shoulder width) /move one leg back a foots width /bend knee of back leg (120 degrees), keeping front knee straight and back aligned with front knee /SLOWLY bend and straigten back knee for 30 seconds, inhale on bend, exhale on straighten /switch to other side and cycle until time",exertion: "2",technicality: "2",equipment: nil,flexibility: "1",balance: "2",strength: "3",breathing: "true",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Balance Pose otherditation",legacy_id: "M0023",legacy_prereqs: "M0007",description: "Start in standing balance pose /proceed through guided, standing meditation,  ",exertion: "1",technicality: "1",equipment: nil,flexibility: "1",balance: "1",strength: "1",breathing: "true",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "Taoism"},
{name: "Balance Pose Row",legacy_id: "M0024",legacy_prereqs: "M0007",description: "Start in standing balance pose /bend knees a bit more /use both arms in a high row motion, going slow, feel squeeze in back muscles, time with regular, deep breathing",exertion: "1",technicality: "1",equipment: nil,flexibility: "1",balance: "1",strength: "2",breathing: "true",muscle_1: "Latissimus Dorsi",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Plank",legacy_id: "T0011",legacy_prereqs: "T0010",description: "execute plank, with breaks every minute",exertion: "4",technicality: "2",equipment: nil,flexibility: "1",balance: "1",strength: "3",breathing: "",muscle_1: "pectorals",muscle_2: "abdominals",muscle_3: "",muscle_stretched: "",origin: "Personal Training"},
{name: "Full Squats",legacy_id: "M0025",legacy_prereqs: "M0026",description: "Start in standing balance pose /slowly get into regular squat then keep going into full squat or as far down as you can go /back up SLOWLY /cycle through slowly, breaks every minute",exertion: "4",technicality: "4",equipment: nil,flexibility: "2",balance: "3",strength: "3",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Full Squats on Toes, Chair assist",legacy_id: "M0026",legacy_prereqs: "T0002",description: "Start in standing balance pose / bend at waist with hands on chair seat, slowly get bend knees to full squat or as far down as you can go /back up SLOWLY /cycle through slowly, breaks every minute",exertion: "3",technicality: "2",equipment: nil,flexibility: "2",balance: "2",strength: "2",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Squats, Chair assist",legacy_id: "M0027",legacy_prereqs: "T0001",description: "Start in standing balance pose /execute regular squats using back of chair with one hand, or two chairs with two hands for balance support/ regular breaks",exertion: "3",technicality: "2",equipment: nil,flexibility: "1",balance: "2",strength: "2",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Full Squats on Toes",legacy_id: "M0028",legacy_prereqs: "M0026, M0025",description: "Start in standing balance pose /balance on toes(balls of feet) /SLOWLY squat all the way down or as far as you can go /slowly ascend /breaks every minute",exertion: "4",technicality: "5",equipment: nil,flexibility: "2",balance: "5",strength: "4",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: "other"},
{name: "Heal Raises, Chair Assist",legacy_id: "M0029",legacy_prereqs: "M0016",description: "Start standing in balance pose /hold on to back of chair for balance /raise up on both toes /hold for ten seconds /go back down then repeat until time",exertion: "2",technicality: "2",equipment: nil,flexibility: "2",balance: "2",strength: "3",breathing: "",muscle_1: "quadriceps",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: ""},
{name: "One-leg heal Raises, Chair assist",legacy_id: "M0030",legacy_prereqs: "M0029, H0005",description: "Start standing in balance pose /hold on to back of chair for balance /balance on one leg /do heal raise repetitions (5-10) then switch legs / can use toe of raised foot for balance /rest and repeat until time",exertion: "3",technicality: "2",equipment: nil,flexibility: "2",balance: "2",strength: "4",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: ""},
{name: "Knee Hug",legacy_id: "M0031",legacy_prereqs: "",description: "",exertion: "2",technicality: "2",equipment: nil,flexibility: "3",balance: "4",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: ""},
{name: "Alternating ankle grabs",legacy_id: "M0032",legacy_prereqs: "",description: "",exertion: "2",technicality: "2",equipment: nil,flexibility: "3",balance: "4",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: ""},
{name: "Hamstretch Flow",legacy_id: "M0033",legacy_prereqs: "",description: "",exertion: "2",technicality: "2",equipment: nil,flexibility: "4",balance: "3",strength: "1",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: ""},
{name: "Flashdance!",legacy_id: "M0034",legacy_prereqs: "",description: "",exertion: "4",technicality: "4",equipment: nil,flexibility: "1",balance: "3",strength: "2",breathing: "",muscle_1: "",muscle_2: "",muscle_3: "",muscle_stretched: "",origin: ""},
]
exercise_array.each { |exercise| Exercise.create(exercise) }

Exercise.all.each do |exercise|
  if exercise.legacy_prereqs
    if exercise.legacy_prereqs.length > 1
      prereqs = exercise.legacy_prereqs.split(',')
      prereqs.each do |prereq|
        exercise.prerequisites << Exercise.where(legacy_id: prereq.lstrip)
      end
      exercise.prerequisites << Exercise.where(legacy_id: exercise.legacy_prereqs)
    end
  end
end
