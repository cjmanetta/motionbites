require 'CSV'

module ExerciseConstructor
  def construct_exercises
    open("db/seeds.rb", 'a') do |f|
      f << "exercise_array = ["
      CSV.foreach("db/exercises.csv", {headers: true, header_converters: :symbol}) do |row|
        name = "\"" + row[:name].to_s + "\""
        legacy_id = "\"" + row[:legacy_id].to_s + "\""
        legacy_prereqs = "\"" + row[:legacy_prereqs].to_s + "\""
        description = "\"" + row[:description].to_s + "\""
        exertion = "\"" + row[:exertion].to_s + "\""
        technicality = "\"" + row[:technicality].to_s + "\""
        equipment = "nil"
        flexibility = "\"" + row[:flexibility].to_s + "\""
        balance = "\"" + row[:balance].to_s + "\""
        strength = "\"" + row[:strength].to_s + "\""
        breathing = "\"" + row[:breathing].to_s + "\""
        muscle_1 = "\"" + row[:muscle_1].to_s + "\""
        muscle_2 = "\"" + row[:muscle_2].to_s + "\""
        muscle_3 = "\"" + row[:muscle_3].to_s + "\""
        muscle_stretched = "\"" + row[:muscle_stretched].to_s + "\""
        origin = "\"" + row[:origin].to_s + "\""

        f << "{"
        f << "name: #{name},"
        f << "legacy_id: #{legacy_id},"
        f << "legacy_prereqs: #{legacy_prereqs},"
        f << "description: #{description},"
        f << "exertion: #{exertion},"
        f << "technicality: #{technicality},"
        f << "equipment: #{equipment},"
        f << "flexibility: #{flexibility},"
        f << "balance: #{balance},"
        f << "strength: #{strength},"
        f << "breathing: #{breathing},"
        f << "muscle_1: #{muscle_1},"
        f << "muscle_2: #{muscle_2},"
        f << "muscle_3: #{muscle_3},"
        f << "muscle_stretched: #{muscle_stretched},"
        f << "origin: #{origin}"
        f << "},\n"
      end
      f << "]\n"
    end
  end

  def add_legacy_prereqs
    open("db/seeds.rb", 'a') do |f|
     f << "Exercise.all.each do |exercise|\n"
     f << "if exercise.legacy_prereqs\n"
     f << "if exercise.legacy_prereqs.length > 1\n"
     f << "prereqs = exercise.legacy_prereqs.split(',')\n"
     f << "prereqs.each do |prereq|\n"
     f << "exercise.prerequisites << Exercise.where(legacy_id: prereq.lstrip)\n"
     f << "end\n"
     f << "exercise.prerequisites << Exercise.where(legacy_id: exercise.legacy_prereqs)\n"
     f << "end\n"
     f << "end\n"
     f << "end\n"
   end
 end

 def create_exercises
    open("db/seeds.rb", 'a') do |f|
      f << "exercise_array.each { |exercise| Exercise.create(exercise) }\n"
    end
 end
end

class Shell
  include ExerciseConstructor
end

shell = Shell.new
shell.construct_exercises
shell.create_exercises
shell.add_legacy_prereqs