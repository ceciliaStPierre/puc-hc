class Patient < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	
	has_many :family_groups, through: :family_groups_patients
	has_many :family_groups_patients
end
