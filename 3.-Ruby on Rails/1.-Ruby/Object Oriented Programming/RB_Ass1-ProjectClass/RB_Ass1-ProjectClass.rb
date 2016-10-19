class Project
  #your code here
  attr_accessor :name, :description
  # Project name# Project descritption
  def initialize(pr_name, pr_description)
    @name = pr_name
    @description = pr_description
  end

  # Elevator pitch method
  def elevator_pitch
    puts "The project name is #{@name} and the description is #{@description}"
  end
end
project1 = Project.new("Project 1", "Description 1")
puts project1.name #prints out Project 1
project1.elevator_pitch.elevator_pitch #prints out 'Project 1, Description 1"
