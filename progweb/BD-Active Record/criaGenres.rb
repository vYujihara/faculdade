require 'active_record'
require 'rubygems'


ActiveRecord::Base.establish_connection :adapter => "sqlite3",
  :database => "Tabelas.sqlite3"
ActiveRecord::Base.connection.create_table :genres do |t|
  t.string :tipo, uniqueness: true
  
end