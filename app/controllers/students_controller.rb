class StudentsController < ApplicationController

  def index
    students = Student.all 
    render json: students
  end

  def grades
    students = Student.all
    render json: students.order('grade DESC')
  end

  def highest_grade
    highest_grade_student = Student.all.max_by{ |s| s[:grade]}
    render json: highest_grade_student
  end

end
