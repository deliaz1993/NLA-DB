class AddParentToStudent < ActiveRecord::Migration
  def change
    add_column :students, :parent_name, :string
    add_column :students, :parent_relationship, :string
    add_column :students, :parent_phone, :string
    add_column :students, :parent_email, :string
  end
end