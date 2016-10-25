#we are going to have to include our Project class in our spec file
require_relative 'project'
#now we can start Rspec
#this line enacts the Rspec library and calls the describe method that takes in the class Project, when doing so it expects to do something
RSpec.describe Project do
  #now we can have Rspec test our Project class
  it 'has a getter and setter for name attribute' do
    # now we can test our Project class
    # lets create a new project and make sure we can set the name attribute
    project = Project.new("Project Name", "I am a project")
    project.name = "Changed Name"
    # we should be able to run that code, now lets make sure its changed.
    # we run the expect method on our projects name and expect our project name to now equal the value of Changed Name, this returns true or false
    expect(project.name).to eq("Changed Name")
  end

  it 'has a getter and a setter for the description attribute' do
      project = Project.new("Project Name", "I am a project")
      project.description = "Changed description"
      expect(project.description).to eq("Changed description")
  end

  it 'has a method elevator_pitch to explain name and description' do
    #lets create two new projects
    project1 = Project.new('Project 1', 'description 1')
    project2 = Project.new('Project 2', 'description 2')
    #if we call elevator_pitch method we should expect to get that project name and description back
    expect(project1.elevator_pitch).to eq("Project 1, description 1")
    expect(project2.elevator_pitch).to eq("Project 2, description 2")
  end

  it 'has a method add_to_team that increments the @team_members by 1' do
    # Lets create a project
    project1 = Project.new('Project 1', 'description 1')
    # If we call the method then it will increment the team members by 1
    expect(project1.add_to_team).to eq(1)
  end
end
