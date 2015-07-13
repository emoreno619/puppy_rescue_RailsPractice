class CreatePuppies < ActiveRecord::Migration
  def change
    create_table :puppies do |t|
      t.text :name
      t.text :breed
      t.text :bio
      t.text :image
      t.integer :age

      t.timestamps null: false
    end
  end
end
