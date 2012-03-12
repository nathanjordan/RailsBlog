class Post < ActiveRecord::Base
	has_many :posttags
	has_many :tags, :through => :posttags
	has_one :user, :foreign_key => "id"
end
