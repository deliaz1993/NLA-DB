class AddSupportServicesToStudents < ActiveRecord::Migration
  def change
    add_column :students, :autistic_support, :boolean
    add_column :students, :emotional_support, :boolean
    add_column :students, :hearing_support, :boolean
    add_column :students, :learning_support, :boolean
    add_column :students, :life_skills_support, :boolean
    add_column :students, :multiple_disability_support, :boolean
    add_column :students, :speed_and_language_support, :boolean
    add_column :students, :visual_support, :boolean
    add_column :students, :other_support, :boolean
  end
end
