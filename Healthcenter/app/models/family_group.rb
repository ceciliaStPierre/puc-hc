class FamilyGroup < ActiveRecord::Base
	has_one :plan
	has_many :patients, through: :family_groups_patients
	has_many :family_groups_patients
end
