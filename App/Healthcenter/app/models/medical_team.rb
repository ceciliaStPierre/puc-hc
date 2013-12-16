class MedicalTeam < ActiveRecord::Base
	belongs_to :patient
	belongs_to :plan
end
