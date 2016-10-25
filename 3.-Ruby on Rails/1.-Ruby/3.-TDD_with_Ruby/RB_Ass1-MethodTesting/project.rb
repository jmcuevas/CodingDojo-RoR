class Project
    attr_accessor :name, :description, :team_members
    def initialize name, description
        @name = name
        @description = description
        @team_members = 0
    end

    def elevator_pitch
        "#{@name}, #{@description}"
    end

    def add_to_team
      @team_members =+ 1
      @team_members
    end
end


project1 = Project.new('1','test')

project1.add_to_team
print project1.team_members
