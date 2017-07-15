class OurDoctorsController < ApplicationController
  before_action :set_our_doctor, only: [:show, :edit, :update, :destroy]

  # GET /our_doctors
  # GET /our_doctors.json
  def index
    @our_doctors = OurDoctor.all
  end

  # GET /our_doctors/1
  # GET /our_doctors/1.json
  def show
  end

  # GET /our_doctors/new
  def new
    @our_doctor = OurDoctor.new
  end

  # GET /our_doctors/1/edit
  def edit
  end

  # POST /our_doctors
  # POST /our_doctors.json
  def create
    @our_doctor = OurDoctor.new(our_doctor_params)

    respond_to do |format|
      if @our_doctor.save
        format.html { redirect_to @our_doctor, notice: 'Our doctor was successfully created.' }
        format.json { render :show, status: :created, location: @our_doctor }
      else
        format.html { render :new }
        format.json { render json: @our_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /our_doctors/1
  # PATCH/PUT /our_doctors/1.json
  def update
    respond_to do |format|
      if @our_doctor.update(our_doctor_params)
        format.html { redirect_to @our_doctor, notice: 'Our doctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @our_doctor }
      else
        format.html { render :edit }
        format.json { render json: @our_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /our_doctors/1
  # DELETE /our_doctors/1.json
  def destroy
    @our_doctor.destroy
    respond_to do |format|
      format.html { redirect_to our_doctors_url, notice: 'Our doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_our_doctor
      @our_doctor = OurDoctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def our_doctor_params
      params.require(:our_doctor).permit(:image_url, :firstname, :lastname, :speciality)
    end
end
