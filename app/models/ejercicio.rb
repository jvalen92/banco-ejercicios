class Ejercicio < ApplicationRecord


validates_presence_of :nombre, :musculo, :maquina, :repeticiones, :series, :peso, :dia


end
