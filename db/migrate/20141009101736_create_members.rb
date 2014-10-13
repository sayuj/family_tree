class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :sex
      t.text :address
      t.datetime :birth_date
      t.datetime :death_date
      t.string :phone
      t.string :email
      t.integer :father_id
      t.integer :mother_id
      t.integer :current_spouse_id

      t.timestamps
    end
  end
end
