class AddPhotoToProduct < ActiveRecord::Migration[5.2]
  def change
    # migrate para adicionar a coluna de fotos a tabela produtos 
    add_column :products, :photo, :string
  end
end
