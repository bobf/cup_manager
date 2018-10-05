class CreateCups < ActiveRecord::Migration[5.2]
  def change
    create_table :cups do |t|
      t.text :color
      t.integer :capacity
    end
  end
end
