class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :secondname
      t.string :father_lastname
      t.string :mother_lastname
      t.integer :phone_number
      t.string :speciality
      t.string :email
      t.string :password
      t.boolean :is_admins

      t.timestamps
    end
  end
end
