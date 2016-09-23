
class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def create
    @patient = Patient.new(params[:patients])
    # params trae? o envia? un hash como {name: "Ness", last_name: "Arguello"}
    if @patient.save
      # vamos a show
    else
      # Mustrame los errores
    end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    #vamos al index
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def new
    @patient  = Patient.new
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(params[:patient_params])
      # vamos al show
    else
      # Muestrame los errores
    end
  end
end
