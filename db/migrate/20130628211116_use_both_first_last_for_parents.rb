class UseBothFirstLastForParents < ActiveRecord::Migration
  def change
    add_column :students, :parent_first_name, :string
    add_column :students, :parent_last_name, :string
  end
end
