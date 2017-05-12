

class JobsController < ApplicationController
  
  USER, PASSWORD = "jcuAdmin", "0pp0"
  before_action :authentication_check
  #http_basic_authenticate_with name: "jcuAdmin", password: "jcu2017",


  def create_landing

  end

  def new

	@job = Job.new
  end

   def create
	 @job = Job.new(job_params)

		if @job.valid?

			#attempted to allow the option to attach a file to the email, but was unable to. There are limited resources out there that try to explain how to do it but none were sufficient for this scenario.
			 #UserMailer.jobRequest_email(@job, Student.first, params[:attachment].read, params[:attachment].original_filename).deliver
			 Student.all.each do |student|
			      UserMailer.jobRequest_email(@job, student).deliver
			 end
				redirect_to '/create_landing'
		else
			render 'new'

		end

	end

protected
  def job_params
  params.require(:job).permit(:jobTitle,:jobDesc,:jobType,:startDate, :comments)
  end

  def authentication_check
    #authenticate_or_request_with_http_basic do |username,pass|
	   if (request.cookies['username'] == USER && request.cookies['password']==PASSWORD)
	     true
	   else
	     redirect_to 'login/index'
	   end
	#end
  end

end
