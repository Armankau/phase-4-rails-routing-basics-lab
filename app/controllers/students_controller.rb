class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json: students
    end

    def grades
        grade = Student.all.order(grade: :desc)
        render json: grade
    end

    def highest_grade
        grade = Student.all.order(grade: :desc).first
        render json: grade
    end
end
