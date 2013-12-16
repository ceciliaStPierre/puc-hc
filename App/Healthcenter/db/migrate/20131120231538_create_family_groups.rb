class CreateFamilyGroups < ActiveRecord::Migration
  def change
    create_table :family_groups, id: false do |t|
    	t.references :plan
    	t.references :patient
    end
    add_index :family_groups, [:plan_id, :patient_id], unique: true
  end
end
