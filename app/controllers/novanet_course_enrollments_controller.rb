class NovanetCourseEnrollmentsController < ApplicationController
  before_action :set_novanet_course_enrollment, only: [:show, :edit, :update, :destroy]

  # GET /novanet_course_enrollments
  # GET /novanet_course_enrollments.json
  def index
    @novanet_course_enrollments = NovanetCourseEnrollment.all
  end

  # GET /novanet_course_enrollments/1
  # GET /novanet_course_enrollments/1.json
  def show
  end

  # GET /novanet_course_enrollments/new
  def new
    @novanet_course_enrollment = NovanetCourseEnrollment.new
  end

  # GET /novanet_course_enrollments/1/edit
  def edit
  end

  # POST /novanet_course_enrollments
  # POST /novanet_course_enrollments.json
  def create
    @novanet_course_enrollment = NovanetCourseEnrollment.new(novanet_course_enrollment_params)
    @novanet_course_enrollment.save

    redirect_to new_novanet_course_enrollment_path
  end

  # PATCH/PUT /novanet_course_enrollments/1
  # PATCH/PUT /novanet_course_enrollments/1.json
  def update
    respond_to do |format|
      if @novanet_course_enrollment.update(novanet_course_enrollment_params)
        format.html { redirect_to @novanet_course_enrollment, notice: 'Novanet course enrollment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @novanet_course_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novanet_course_enrollments/1
  # DELETE /novanet_course_enrollments/1.json
  def destroy
    @novanet_course_enrollment.destroy
    respond_to do |format|
      format.html { redirect_to novanet_course_enrollments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novanet_course_enrollment
      @novanet_course_enrollment = NovanetCourseEnrollment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novanet_course_enrollment_params
      params.require(:novanet_course_enrollment).permit(:student_id, :NovanetCourse_id)
    end
end
