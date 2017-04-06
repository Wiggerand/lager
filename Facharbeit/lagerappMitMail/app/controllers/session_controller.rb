class SessionController < ApplicationController

def new
end

def create
	user = User.find_by(loginname: params[:loginname])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id
		flash[:notice] = "Willkommen zurück #{user.loginname.capitalize}!"
		redirect_to root_path
	else
		flash.now[:alert] = "Falsche Zugangsdaten!!"
		render :new
	end
end

def destroy
	session[:user_id] = nil
	redirect_to root_path, notice: "Du bist ausgeloggt ! Bis zum nächsten mal."
end

end
