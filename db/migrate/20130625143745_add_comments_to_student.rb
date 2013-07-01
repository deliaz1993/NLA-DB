class AddCommentsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :comments, :string
  end
end
