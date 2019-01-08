class Product < ApplicationRecord
  enum status: [:active, :inactive]
  has_many :product_quantities

  #adicionando a opção de fotos à classe
  mount_uploader :photo, PhotoUploader
end
