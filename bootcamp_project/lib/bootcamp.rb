class Bootcamp

    def initialize(name, slogan, student_capacity)
        @name = name 
        @slogan = slogan 
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |h,k| h[k] = [] }
    end 

    def name 
        return @name
    end 
    def slogan
        return @slogan
    end 
    def teachers
        return @teachers
    end 
    def students
        return @students
    end 

    def hire(string)
        @teachers.push(string)
    end 

    def enroll(student)
        if @students.length < @student_capacity
            @students.push(student)
            return true 
        else 
            return false 
        end 
    end 

    def enrolled?(student)
        @students.include?(student)
    end 

    def student_to_teacher_ratio
        return @students.length / @teachers.length
    end     

    def add_grade(student, grade)
        if self.enrolled?(student)
            @grades[student] << grade 
            return true 
        else 
            return false 
        end 
    end 

    def num_grades(student)
        return @grades[student].length 
    end 

    def average_grade(student)
        return nil if @grades[student].empty?
        return (@grades[student].flatten.sum) / self.num_grades(student)
    end 

end
