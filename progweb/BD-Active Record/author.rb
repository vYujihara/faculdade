require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
:database => "Tabelas.sqlite3"


class Author < ActiveRecord::Base;
  has_many :books, :dependent => :destroy
  has_one :document, :dependent => :destroy
  validates :nome, :sobrenome, presence: true
  validates :document, length:
    { maximum: 1, too_long: "Autor só deve ter %{count} documento"}
end