class MailController < ApplicationController
	def view
		@user = User.find( params[:id] )
		@mail = Message.where( :toUser => params[:id] )
	end
end
