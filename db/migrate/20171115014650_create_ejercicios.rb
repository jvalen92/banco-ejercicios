class CreateEjercicios < ActiveRecord::Migration[5.1]
  def change
    create_table :ejercicios do |t|
      t.string :nombre
      t.string :musculo
      t.string :maquina
      t.string :repeticiones
      t.string :series
      t.string :gif
      t.string :dia
      t.string :tiempo
      t.string :peso

      t.timestamps
    end
  end
end
