class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :folio
      t.string :titulo
      t.string :autor
      t.string :descripcion
      t.string :genero
      t.string :editorial
      t.string :status
      t.string :usuario
      t.string :ubicacion
      t.timestamps
    end
  end
end
