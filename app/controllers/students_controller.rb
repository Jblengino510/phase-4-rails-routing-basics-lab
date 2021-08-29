class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json: students
    end

    def grades
        grades = Student.all.order(grade: :desc)
        render json: grades
    end

    def highest_grade
        students = Student.all
        highest_grade = students.max{ |a,b| a.grade <=> b.grade }
        render json: highest_grade
    end
end
