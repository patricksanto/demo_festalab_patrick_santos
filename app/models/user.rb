require 'cpf_cnpj'

class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, 'valid_email_2/email': true
  validates :cpf, presence: true, uniqueness: true
  validate :valid_cpf
  validates :phone, format: { with: /\A\(\d{2}\) \d{4,5}-\d{4}\z/, message: "não possui o formato válido" }

  def valid_cpf
    errors.add(:cpf, 'inválido') unless CPF.valid?(cpf)
  end
end
