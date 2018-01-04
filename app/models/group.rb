class Group < ApplicationRecord
  attr_reader :days

  def initialize(students)
    @days = {}
    matching(students)
  end

  def matching(students)
    @students.full_name
  end

end
