require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
  :database => "Tabelas.sqlite3"
ActiveRecord::Base.connection.create_table :books do |t|
  t.string :titulo_livro
  t.integer :ano_publicacao
  t.references :author, foreign_key: true
end