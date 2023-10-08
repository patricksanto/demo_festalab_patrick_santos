require 'cpf_cnpj'

class User < ApplicationRecord
  include PgSearch::Model

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, 'valid_email_2/email': true
  validates :cpf, presence: true, uniqueness: true
  validate :valid_cpf
  validates :phone, format: { with: /\A\d+\z/ }

  pg_search_scope :search_by_name, against: :name


  def valid_cpf
    errors.add(:cpf, 'inválido ') unless CPF.valid?(cpf)
  end
end
