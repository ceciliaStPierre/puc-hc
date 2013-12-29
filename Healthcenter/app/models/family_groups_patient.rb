class FamilyGroupsPatient < ActiveRecord::Base
	belongs_to :patient
	belongs_to :family_group
end
