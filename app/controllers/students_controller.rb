class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def new
    @student = Student.create(params)
    redirect_to student_path
  end
  
  def create
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end
  
end
