class AddActivityUserReference < ActiveRecord::Migration
  def change
  	add_reference :activities, :user, index: true
  	add_reference :activities, :plan, index: true
  	add_reference :plans, :user, index: true
  	remove_column :plans, :owner_id
  end
end
