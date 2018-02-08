class User < ApplicationRecord
	has_many :events, class_name: "Event", foreign_key: "user_id"
	has_and_belongs_to_many :attendees, class_name: "User"
end
