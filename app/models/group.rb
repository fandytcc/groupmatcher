class Group < ApplicationRecord
  attr_reader :days

  def initialize
    @days = {}
    set_students
    student_names_array
    matching
  end

  def set_students
    @users = User.all
    @students = User.select { |user| user.admin == false }
  end

  def student_names_array
    @names = []
    profiles = Profile.all
    @students.each do |student|
      @names << student.profile.full_name
    end
  end

  def matching
    names << "Dummy" if names.size.odd?
    days = names.size - 1
    fixed_number = names.pop
    groups_per_day = names.size /2

    days.times do |i|
      @days[i] = []
      groups_per_day.times do |students_index|
        @days[i] << [names[students_index], names.reverse[students_index]]
      end
      names = [names[0] + names[1..-1].rotate(-1)
    end
  end

end
