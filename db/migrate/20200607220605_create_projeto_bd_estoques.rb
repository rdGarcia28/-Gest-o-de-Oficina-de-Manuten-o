class CreateProjetoBdEstoques < ActiveRecord::Migration[6.0]
  def change
    create_table :projeto_bd_estoques do |t|
      t.integer :index
      t.string :componente
      t.integer :quantidade
      t.float :valor

      t.timestamps
    end
  end
end
