module ProjectsHelper
    
    def checked(area)
        
        @project.periodicity.nil? ? false : @project.periodicity.match(area)
    end
end
