class Plan < ActiveRecord::Base
	validates :state, :inclusion => { :in => PLAN_STATE }
	validates :plan_type, :inclusion => { :in => PLAN_TYPE }
	validates :risk_factor, :inclusion => { :in => PLAN_RISK }

	belongs_to :family_group
	has_many :activities
	has_many :family_groups
end
