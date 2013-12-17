class Patient < ActiveRecord::Base
	has_many :plans, through: :family_groups
	has_many :family_groups
end
