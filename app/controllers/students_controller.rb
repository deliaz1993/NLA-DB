class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def list_by_school
    @students = Student.all
  end

  # GET /students
  # GET /students.json
  def index
    @students = Student.all.order(:last_name)
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to students_path, notice: 'Student was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student }
      else
        format.html { render action: 'new' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to students_path, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:school_id, :first_name, :middle_name, :last_name, :gender, :DOB, :race, :phone, :email, :street_address, :city, :state, :zip_code, :parent_relationship, :parent_email, :comments, :grade, :counselor_name, :student_phone, :parent_home_phone, :parent_work_phone, :parent_cell_phone, :parent_street_address, :parent_city, :parent_state, :parent_zip_code, :household_number_of_members, :in_foster_care, :school_lunch_program, :race, :dietary_needs, :allergies_medications_impairments, :permission_to_transport_child, :clinic_address, :clinic_phone_number, :emergency_contact_1_name, :emergency_contact_1_phone, :emergency_contact_2_name, :emergency_contact_2_phone, :release_field_trip_form_signed, :release_and_authorization_form_signed, :parent_first_name, :parent_last_name, :autistic_support, :emotional_support, :hearing_support, :learning_support, :life_skills_support, :multiple_disability_support, :visual_support, :speech_and_language_support, :other_support, :phone_history)
    end
end
