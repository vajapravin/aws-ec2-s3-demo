class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :designation
      t.string :twitter
      t.string :facebook
      t.string :instagram

      t.timestamps null: false
    end
  end
end
