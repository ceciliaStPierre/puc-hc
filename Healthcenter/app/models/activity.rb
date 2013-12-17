class Activity < ActiveRecord::Base
	validates :type, :inclusion => { :in => ACTIVITY_TYPE}
	belongs_to :plan
end
