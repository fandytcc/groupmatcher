class Group < ApplicationRecord
  attr_reader :days

  def initalize(students)
    @days = {}
    matching(students)
  end

  def set_students
    @users = User.all
    @students = User.select { |user| user.admin == false }
  end

  def set_students_array
    @student_names = []
    profiles = Profile.all
    profiles.each do |profile|
      @student_names << @students.profile.full_name if !@user.admin?
    end
  end

  def matching(students)
    puts @students.first_name
    n = @students.first_name.dup
    n << "Dummy" if n.size.odd?
    fixed_number = n.shuffle!.pop

    n.length.times do |i|
      puts "round #{i+1}"
      two_rows = [[fixed_number]+n[0..n.size/2-1], n[n.size/2..-1].reverse]
      pairs = two_rows.transpose
      pairs.each{ |pair| puts pair }
      n.rotate!
    end
    pairs.each do |group|
      Group.create!(groups: group)
    end
  end

end
