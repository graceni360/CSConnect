class AdminLoginsController < ApplicationController

def new
@adminLogin = AdminLogin.new
end

def create
  @adminLogin = AdminLogin.new(admin_params)
if @adminLogin.valid?
   cookies['username'] = {
       :value => 'jcuAdmin',
       :expires => 1.hour.from_now,
     }
	    cookies['password'] = {
       :value => '0pp0',
       :expires => 1.hour.from_now,
     }
redirect_to '/jobs/new'
else
	render 'new'
	end
end

private
  def admin_params
  params.require(:adminLogin).permit(:username,:password)
  end
end