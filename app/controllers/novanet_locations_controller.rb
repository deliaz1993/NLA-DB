class NovanetLocationsController < ApplicationController
  before_action :set_novanet_location, only: [:show, :edit, :update, :destroy]


  # GET /novanet_locations
  # GET /novanet_locations.json
  def index
    @novanet_locations = NovanetLocation.all
  end

  # GET /novanet_locations/1
  # GET /novanet_locations/1.json
  def show
  end

  # GET /novanet_locations/new
  def new
    @novanet_location = NovanetLocation.new
  end

  # GET /novanet_locations/1/edit
  def edit
  end

  # POST /novanet_locations
  # POST /novanet_locations.json
  def create
    @novanet_location = NovanetLocation.new(novanet_location_params)

    respond_to do |format|
      if @novanet_location.save
        format.html { redirect_to @novanet_location, notice: 'Novanet location was successfully created.' }
        format.json { render action: 'show', status: :created, location: @novanet_location }
      else
        format.html { render action: 'new' }
        format.json { render json: @novanet_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /novanet_locations/1
  # PATCH/PUT /novanet_locations/1.json
  def update
    respond_to do |format|
      if @novanet_location.update(novanet_location_params)
        format.html { redirect_to @novanet_location, notice: 'Novanet location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @novanet_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novanet_locations/1
  # DELETE /novanet_locations/1.json
  def destroy
    @novanet_location.destroy
    respond_to do |format|
      format.html { redirect_to novanet_locations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novanet_location
      @novanet_location = NovanetLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novanet_location_params
      params.require(:novanet_location).permit(:name, :address, :employee_id)
    end
end
