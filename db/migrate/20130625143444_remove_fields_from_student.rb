class RemoveFieldsFromStudent < ActiveRecord::Migration
  def change
    remove_column :students, :race
  end
end
