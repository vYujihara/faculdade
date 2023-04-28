require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
:database => "Tabelas.sqlite3"


class Document < ActiveRecord::Base;
  
  
  validates :cpf, numericality: 
    { only_integer: true, message: "Apenas números no cpf"}
  validates :rg, numericality:
    { only_integer: true, message: "Apenas números no rg"}
  validates :rg, :cpf, presence: true
end