class AgregaOtradispocadaveresALugarpreliminar < ActiveRecord::Migration[6.0]
  def change
    add_column :apo214_lugarpreliminar, :otradisposicioncadaveres, :string
  end
end
