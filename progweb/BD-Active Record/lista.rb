require 'active_record'
require 'rubygems'

def listagem (comandos, tabela)
  if comandos.length != 2
    return "Argumentos inválidos"
  end
  
  case tabela
  when 1
    obj = Author.all
    puts obj.class
    obj.each do |o|
      puts "id:#{o.id} Nome:#{o.nome}, Sobrenome:#{o.sobrenome}" 
      
    end
  when 2
    obj = Book.all
    puts obj.class
    obj.each do |o|
      puts "id:#{o.id} Titulo do livro:#{o.titulo_livro}, Ano de publicacao:#{o.ano_publicacao}" 
    end
  when 3
    obj = Document.all
    puts obj.class
    obj.each do |o|
      puts "id:#{o.id} rg#{o.rg}, cpf#{o.cpf}" 
    end
  when 4
    obj = Genre.all
    puts obj.class
    obj.each do |o|
      puts "id:#{o.id} Tipo:#{o.tipo}" 
    end
  when 5
    b = Book.all
    b.each do |book|
      generos = book.genres
      print "#{book.titulo_livro}->"
      generos.each do |genero|
        print "#{genero.tipo} "
      end
      puts
    end
  else
    puts "Tabela inválida"
    return
  end
end