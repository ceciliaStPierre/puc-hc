class User < ActiveRecord::Base
	has_many :plans
	has_many :activities

	has_secure_password
	has_attached_file :avatar, :styles => { :medium => "300x300", :small => "200x200>", :thumb => "100x100>" }, :default_url => "/assets/missing.png"

	validates :firstname, presence: true
	validates :secondname, presence: true
	validates :father_lastname, presence: true
	validates :mother_lastname, presence: true
	validates :speciality, presence: true
	validates :phone_number, presence: true
	validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }, uniqueness: true
	validates :password, confirmation: true, presence: true, length: { in: 8..50 }
	validates :password_confirmation, presence: true

	def self.authenticate(email, password)
		User.find_by(email: email).try(:authenticate, password)
	end
end
