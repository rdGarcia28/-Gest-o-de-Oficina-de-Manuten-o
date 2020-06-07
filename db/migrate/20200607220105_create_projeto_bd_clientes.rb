class CreateProjetoBdClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :projeto_bd_clientes do |t|
      t.integer :index
      t.string :nome
      t.string :descricao
      t.date :dataInicial
      t.date :previsaoEntrega
      t.string :status
      t.float :orcamento

      t.timestamps
    end
  end
end
