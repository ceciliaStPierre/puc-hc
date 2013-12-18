class Plan < ActiveRecord::Base
	validates :state, :inclusion => { :in => PLAN_STATE }
	validates :plan_type, :inclusion => { :in => PLAN_TYPE }
	validates :risk_factor, :inclusion => { :in => PLAN_RISK }

	has_many :users, through: :medical_teams
	has_many :medical_teams
	has_many :activitys
	has_many :patients, through: :family_groups
	has_many :family_groups
end
