class StudentsController < ApplicationController

#def to_param
#email
#end


def show
#@student=Student.find_by_email(params[:email])
@student=Student.find(params[:id])
end

  def new
  @student = Student.new


  end
  
  def create
  @student = Student.new(student_params)

	if @student.save
	  UserMailer.welcome_email(@student).deliver
		 redirect_to @student

	else
	render 'new'

	end

end


private
  def student_params
  params.require(:student).permit(:email,:firstName,:lastName)
  end

end
