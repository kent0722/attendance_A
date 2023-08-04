class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :affiliation
      t.string :employee_number
      t.string :uid
      t.string :role
      t.boolean :admin, default: false
      t.boolean :superior, default: false

      t.timestamps
    end
  end
end
