$:.push './'
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