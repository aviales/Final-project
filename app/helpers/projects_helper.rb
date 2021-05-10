module ProjectsHelper
    
    def checked(project, area)
        
        project.periodicity.nil? ? false : project.periodicity.match(area)
    end
end
