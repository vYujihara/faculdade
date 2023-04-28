require 'active_record'
require 'rubygems'


ActiveRecord::Base.establish_connection :adapter => "sqlite3",
  :database => "Tabelas.sqlite3"
ActiveRecord::Base.connection.create_table :documents do |t|
  t.integer :rg
  t.integer :cpf
  t.references :author, foreign_key: true
end