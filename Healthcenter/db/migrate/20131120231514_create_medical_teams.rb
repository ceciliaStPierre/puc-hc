class CreateMedicalTeams < ActiveRecord::Migration
  def change
    create_table :medical_teams, id: false do |t|
    	t.references :user
    	t.references :plan
    end
    add_index :medical_teams, [:user_id, :plan_id], unique: true
  end
end
