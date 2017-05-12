class UserMailer < ApplicationMailer
  default from: 'CSConnectNotify@gmail.com'

  def welcome_email(student)
	@student = student
	mail(to: @student.email, subject: 'Welcome to CS Connect!')

  end

	def jobRequest_email(job, student)#,file, filePath) 

	@student = student
	@job = job
	#attachments[filePath] = file

	mail(to: @student.email, subject: 'New CS Opportunity')

	end

end
		#@student = theStudent
	#@job = theJob
	#recipients @student.email
	#subject 'New CS Opportunity'
	#content_type "multipart/mixed"

	#attachment :content_type => "pdf"
	#attachment "#{file}" = File.read(filePath)
	#part :content_type => “multipart/alternative” do |a|
	#	a.part “text/html” do |p|
	#		p.body = render_message ‘jobRequest_email.html.erb’, :student => @student, :job => @job
	#	end
	#	attachment “application/octet-stream” do |a|
	#		a.body = file.file_data.read
	#		a.filename = file.file_data.original_filename
	#	end unless file.file_data.blank?
	#end