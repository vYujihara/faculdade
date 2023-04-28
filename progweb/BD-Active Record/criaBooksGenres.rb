require 'active_record'
require 'rubygems'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
  :database => "Tabelas.sqlite3"
ActiveRecord::Base.connection.create_table :books_genres,id: false do |t|
  t.references :book
  t.references :genre
end