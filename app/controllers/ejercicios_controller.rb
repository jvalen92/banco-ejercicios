class EjerciciosController < ApplicationController




before_action :set_ejercicio, only: [:show, :update, :destroy]

  # GET /ejercicios
  def index
    @ejercicios = Ejercicio.all
    json_response(@ejercicios)
  end

  # POST /ejercicios
  def create
    @ejercicio = Ejercicio.create!(ejercicio_params)
    json_response(@ejercicio, :created)
  end

  # GET /ejercicio/:id
  def show
    json_response(@ejercicio)
  end

  # PUT /ejercicios/:id
  def update
    @ejercicio.update(ejercicio_params)
    head :no_content
  end

  # DELETE /ejercicios/:id
  def destroy
    @ejercicio.destroy
    head :no_content
  end

  private

  def ejercicio_params
    # whitelist params
    params.permit(:nombre, :musculo, :repeticiones, :maquina, :series, :peso, :dia , :gif, :tiempo)
  end

  def set_ejercicio
    @ejercicio = Ejercicio.find(params[:id])
  end




end
