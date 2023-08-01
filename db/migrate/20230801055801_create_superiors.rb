class CreateSuperiors < ActiveRecord::Migration[5.1]
  def change
    create_table :superiors do |t|
      t.string :name
      t.string :email

      t.timestamps
    end

    add_reference :users, :superior, foreign_key: true
  end
end