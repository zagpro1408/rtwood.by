class Order < ApplicationRecord
  validates :company, :name, :email, :text, presence: {
    message: 'обязательное поле для заполнения;'
  }
end
