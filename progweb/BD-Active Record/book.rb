require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
:database => "Tabelas.sqlite3"


class Book < ActiveRecord::Base;
  has_and_belongs_to_many :genres, -> { distinct }
  belongs_to :author
  validates :genres, length:
    { minimum: 1, message: "Livro tem que ter pelo menos 1 gênero"}
  validates :ano_publicacao, length:
    { in: 1..4, message: "Coloque um ano válido"}
  validates :ano_publicacao, numericality: 
    { only_integer: true, message: "Apenas números no ano de publicação"}
end