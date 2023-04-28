require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
:database => "Tabelas.sqlite3"


class Genre < ActiveRecord::Base;
  has_and_belongs_to_many :books, -> { distinct }
  validates :tipo, presence: true
end