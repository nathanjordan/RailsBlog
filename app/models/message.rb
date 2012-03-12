class Message < ActiveRecord::Base
	has_one :user, :foreign_key => "fromUser"
	has_one :user, :foreign_key => "toUser"
end
