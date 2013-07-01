class NovanetLocationEnrollmentsController < ApplicationController
  before_action :set_novanet_location_enrollment, only: [:show, :edit, :update, :destroy]

  # GET /novanet_location_enrollments
  # GET /novanet_location_enrollments.json
  def index
    @novanet_location_enrollments = NovanetLocationEnrollment.all
  end

  # GET /novanet_location_enrollments/1
  # GET /novanet_location_enrollments/1.json
  def show
  end

  # GET /novanet_location_enrollments/new
  def new
    @novanet_location_enrollment = NovanetLocationEnrollment.new
  end

  # GET /novanet_location_enrollments/1/edit
  def edit
  end

  # POST /novanet_location_enrollments
  # POST /novanet_location_enrollments.json
  def create
    @novanet_location_enrollment = NovanetLocationEnrollment.new(novanet_location_enrollment_params)

    respond_to do |format|
      if @novanet_location_enrollment.save
        format.html { redirect_to @novanet_location_enrollment, notice: 'Novanet location enrollment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @novanet_location_enrollment }
      else
        format.html { render action: 'new' }
        format.json { render json: @novanet_location_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /novanet_location_enrollments/1
  # PATCH/PUT /novanet_location_enrollments/1.json
  def update
    respond_to do |format|
      if @novanet_location_enrollment.update(novanet_location_enrollment_params)
        format.html { redirect_to @novanet_location_enrollment, notice: 'Novanet location enrollment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @novanet_location_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novanet_location_enrollments/1
  # DELETE /novanet_location_enrollments/1.json
  def destroy
    @novanet_location_enrollment.destroy
    respond_to do |format|
      format.html { redirect_to novanet_location_enrollments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novanet_location_enrollment
      @novanet_location_enrollment = NovanetLocationEnrollment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novanet_location_enrollment_params
      params.require(:novanet_location_enrollment).permit(:student_id, :NovanetLocation_id)
    end
end
