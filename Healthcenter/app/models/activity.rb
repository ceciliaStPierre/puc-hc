class Activity < ActiveRecord::Base
	validates :activity_type, :inclusion => { :in => ACTIVITY_TYPE}
	belongs_to :plan
end
