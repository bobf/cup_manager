class AddNameToCup < ActiveRecord::Migration[5.2]
  def change
    add_column :cups, :name, :string
  end
end
