class RemoveNameFromDirecteds < ActiveRecord::Migration[5.0]
  def change
    remove_column :directeds, :name, :string
  end
end
