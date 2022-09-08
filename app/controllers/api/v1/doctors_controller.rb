class Api::V1::DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show]
  
  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      render json: @doctor, status: :created
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @doctor
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :specialty, :education, :experience, :image, :address)
  end
end