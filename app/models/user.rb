class User < ApplicationRecord
	has_many :events, class_name: "Event", foreign_key: "user_id"
	has_and_belongs_to_many :attended_events, class_name: "Event"

	before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  #permet de changer le password and password_digest. Il faut ajouter password_digest dans la table
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  
end
