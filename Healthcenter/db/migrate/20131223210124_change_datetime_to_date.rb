class ChangeDatetimeToDate < ActiveRecord::Migration
  def change
  	change_column :activities, :deadline, :date
  end
end
