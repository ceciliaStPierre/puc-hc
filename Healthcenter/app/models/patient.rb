class Patient < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "300x300", :small => "200x200>", :thumb => "100x100>" }, :default_url => "/assets/missing.png"
	
	has_many :family_groups, through: :family_groups_patients
	has_many :family_groups_patients
end
