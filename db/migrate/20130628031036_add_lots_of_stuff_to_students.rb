class AddLotsOfStuffToStudents < ActiveRecord::Migration
  def change
    add_column :students, :household_number_of_members, :integer
    add_column :students, :in_foster_care, :boolean
    add_column :students, :school_lunch_program, :string
    add_column :students, :race, :string

    add_column :students, :learning_support, :string

    add_column :students, :dietary_needs, :string
    add_column :students, :allergies_medications_impairments, :string
    add_column :students, :permission_to_transport_child, :boolean
    add_column :students, :physician_clinic_name, :string
    add_column :students, :clinic_street_address, :string
    add_column :students, :clinic_phone_number, :string
    add_column :students, :emergency_contact_1_name, :string
    add_column :students, :emergency_contact_1_phone, :string
    add_column :students, :emergency_contact_2_name, :string
    add_column :students, :emergency_contact_2_phone, :string

    add_column :students, :release_field_trip_form_signed, :boolean
    add_column :students, :release_and_authorization_form_signed, :boolean

  end
end
