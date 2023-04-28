$:.push './'
require 'author.rb'
require 'document.rb'
require 'book.rb'
require 'genre.rb'


genre = Genre.new({:tipo => "Fantasia"})
genre.save
genre = Genre.new({:tipo => "Ficção Científica"})
genre.save
genre = Genre.new({:tipo => "Horror"})
genre.save
genre = Genre.new({:tipo => "Drama"})
genre.save
genre = Genre.new({:tipo => "Humor"})
genre.save
genre = Genre.new({:tipo => "Romance"})
genre.save
genre = Genre.new({:tipo => "Infantil"})
genre.save
genre = Genre.new({:tipo => "Aventura"})
genre.save
genre = Genre.new({:tipo => "Folclore"})
genre.save
genre = Genre.new({:tipo => "Ficção Distópica"})
genre.save
genre = Genre.new({:tipo => "Suspense"})
genre.save
genre = Genre.new({:tipo => "Romance policial"})
genre.save

gen1 = Genre.find_by_tipo("Fantasia")
gen2 = Genre.find_by_tipo("Aventura")
gen3 = Genre.find_by_tipo("Folclore")
gen4 = Genre.find_by_tipo("Infantil")
gen5 = Genre.find_by_tipo("Ficção Científica")
gen6 = Genre.find_by_tipo("Horror")
gen7 = Genre.find_by_tipo("Drama")
gen8 = Genre.find_by_tipo("Humor")
gen9 = Genre.find_by_tipo("Romance")
gen10 = Genre.find_by_tipo("Ficção Distópica")
gen11 = Genre.find_by_tipo("Suspense")
gen12 = Genre.find_by_tipo("Romance policial")

a = Author.new ({:nome => "George", :sobrenome => "Martin"})
doc = Document.new ({:rg => "1000", :cpf => "09894980"})
livro1 = Book.new ({:titulo_livro => "A Guerra dos Tronos", :ano_publicacao => "1996"})

livro1.genres << gen1
a.save
a.document = doc
a.save

livro1.author = a
livro1.save

a = Author.new ({:nome => "Monteiro", :sobrenome => "Lobato"})
doc = Document.new ({:rg => "1001", :cpf => "95410113"})
livro1 = Book.new ({:titulo_livro => "Reinações de Narizinho", :ano_publicacao => "1931"})
livro2 = Book.new ({:titulo_livro => "O Saci", :ano_publicacao => "1921"})

livro1.genres << gen1
livro2.genres << gen2
livro2.genres << gen3
livro2.genres << gen4
a.save
a.document = doc
a.save
livro1.author = a
livro1.save
livro2.author = a
livro2.save

a = Author.new ({:nome => "Roald", :sobrenome => "Dahl"})
doc = Document.new ({:rg => "1002", :cpf => "99833045"})
livro1 = Book.new ({:titulo_livro => "Matilda", :ano_publicacao => "1988"})
livro2 = Book.new ({:titulo_livro => "A Fantástica Fábrica de Chocolate", :ano_publicacao => "1964"})
livro1.genres << gen1
livro1.genres << gen4
livro1.genres << gen8
livro2.genres << gen1
livro2.genres << gen2
livro2.genres << gen4
livro2.genres << gen8
a.save
a.document = doc
a.save
livro1.author = a
livro1.save
livro2.author = a
livro2.save

a = Author.new ({:nome => "Stephen", :sobrenome => "King"})
doc = Document.new ({:rg => "1003", :cpf => "47817274"})
livro1 = Book.new ({:titulo_livro => "It - A coisa", :ano_publicacao => "1986"})
livro1.genres << gen6
a.save
a.document = doc
a.save
livro1.author = a
livro1.save

a = Author.new ({:nome => "Frank", :sobrenome => "Hebert"})
doc = Document.new ({:rg => "1004", :cpf => "61176116"})
livro1 = Book.new ({:titulo_livro => "Duna", :ano_publicacao => "1965"})
livro1.genres << gen5
a.save
a.document = doc
a.save
livro1.author = a
livro1.save

a = Author.new ({:nome => "Machado", :sobrenome => "de Assis"})
doc = Document.new ({:rg => "1005", :cpf => "17386675"})
livro1 = Book.new ({:titulo_livro => "Dom Casmurro", :ano_publicacao => "1899"})
livro2 = Book.new ({:titulo_livro => "Memórias Póstumas de Brás Cubas", :ano_publicacao => "1881"})
livro1.genres << gen8
livro2.genres << gen8
a.save
a.document = doc
a.save
livro1.author = a
livro1.save
livro2.author = a
livro2.save

a = Author.new ({:nome => "George", :sobrenome => "Orwell"})
doc = Document.new ({:rg => "1006", :cpf => "17637092"})
livro1 = Book.new ({:titulo_livro => "1984", :ano_publicacao => "1949"})
livro2 = Book.new ({:titulo_livro => "A revolução dos bichos", :ano_publicacao => "1945"})
livro1.genres << gen10
livro1.genres << gen5
livro2.genres << gen10
a.save
a.document = doc
a.save
livro1.author = a
livro1.save
livro2.author = a
livro2.save

a = Author.new ({:nome => "Paulo", :sobrenome => "Coelho"})
doc = Document.new ({:rg => "1007", :cpf => "28602342"})
livro1 = Book.new ({:titulo_livro => "O Alquimista", :ano_publicacao => "1988"})
livro1.genres << gen1
livro1.genres << gen7
livro1.genres << gen9
a.save
a.document = doc
a.save
livro1.author = a
livro1.save

a = Author.new ({:nome => "Dan", :sobrenome => "Brown"})
doc = Document.new ({:rg => "1008", :cpf => "51252852"})
livro1 = Book.new ({:titulo_livro => "O Código Da Vinci", :ano_publicacao => "2003"})
livro1.genres << gen11
livro1.genres << gen12
a.save
a.document = doc
a.save
livro1.author = a
livro1.save

a = Author.new ({:nome => "Ray", :sobrenome => "Bradbury"})
doc = Document.new ({:rg => "1009", :cpf => "89463155"})
livro1 = Book.new ({:titulo_livro => "Fahrenheit 451", :ano_publicacao => "1953"})
livro1.genres << gen10
livro1.genres << gen9
a.save
a.document = doc
a.save
livro1.author = a
livro1.save

