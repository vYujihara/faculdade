require 'active_record'
require 'rubygems'

def incluiAuthor(comandos)
  a = Author.new
  
  comandos.each do |comando|
    blank = " "
    if comando == blank
      next
    end

    info = splitaComando(comando)
    if info[0] == "nome"
      a.nome = info[1]
    elsif info[0] == "sobrenome"
      a.sobrenome = info[1]
    end
  end

  if a.invalid?
    puts a.errors.full_messages
  else
    a.save
  end
end

def incluiBook(comandos)
  b = Book.new
  temAutor = false
  a = Author.new
  comandos.each do |comando|
    blank = " "
    if comando == blank
      next
    end
    info = splitaComando(comando)
    if info[0] == "titulo_livro"
      b.titulo_livro = info[1]
    elsif info[0] == "ano_publicacao"
      ano = info[1].to_i
      b.ano_publicacao = ano
    elsif info[0] == "genre"
      genres = info[1].split(',', -1)
      genres.each do |gen|
        tipoGenero = Genre.find_by_tipo(gen)
        b.genres << tipoGenero
      end
    end
    if info[0] == "author_id"
      temAutor = true
      id = info[1].to_i
      a = Author.find_by_id(id)
      if !a
        puts "id inválido"
        return
      end
    end
  end
  if !temAutor
    puts "Deve ter author_id"
    return
  end

  if b.invalid?
    puts b.errors.full_messages
  else

    b.author = a
    b.save
  end

end

def incluiDocument(comandos)
  a = Author.new
  temAutor = false
  d = Document.new
  comandos.each do |comando|
    blank = " "
    if comando == blank
      next
    end
    info = splitaComando(comando)
    if info[0] == "rg"
      d.rg = info[1].to_i
    elsif info[0] == "cpf"
      d.cpf = info[1].to_i
    end
    if info[0] == "author_id"
      temAutor = true
      id = info[1].to_i
      a = Author.find_by_id(id)
      if !a
        puts "id inválido"
        return
      end
    end
  end
  if !temAutor
    puts "Deve ter author_id"
    return
    a.document = d
  end
  if d.invalid?
    puts d.errors.full_messages
  else
    
    a.save
  end
end

def incluiGenre(comandos)
  a = Author.new
  gen = Genre.new
  comandos.each do |comando|
    blank = " "
    if comando == blank
      next
    end
    info = splitaComando(comando)
    if info[0] == "tipo"
      gen.tipo = info[1]
    end
  end
  if gen.invalid?
    puts gen.errors.full_messages
  else
    gen.save
  end

end

def inclusao(comandos,tabela)
  comandos = comandos.split(/[()]/)
  
  case tabela 
  when 1
    incluiAuthor(comandos)
  when 2
    incluiBook(comandos)

  when 3
    incluiDocument(comandos)
  when 4
    incluiGenre(comandos)
  else
    puts "Não existe essa tabela"
  end
end