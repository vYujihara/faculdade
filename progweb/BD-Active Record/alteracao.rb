require 'active_record'
require 'rubygems'

def alteracaoAuthor(comando)
  o = Author.new
  info = splitaComando(comando)
  puts info
  if info[0] == "nome"
    o = Author.find_by_nome(info[1])
    if o
      o.nome = info[2]
      if o.invalid?
        puts o.errors.full_messages
        return
      else
        o.save
      end
    else
      puts "Nao existe esse dado"
    end
    
  elsif info[0] == "sobrenome"
    o = Author.find_by_sobrenome(info[1])
    if o
      o.sobrenome = info[2]
      if o.invalid?
        puts o.errors.full_messages
        return
      else
        o.save
      end
    else
      puts "Nao existe esse dado"
    end
  else
    puts "Comando inválido"
  end
end

def alteracaoBook(comando)
  o = Book.new
  info = splitaComando(comando)
  if info[0] == "titulo_livro"
    o = Book.find_by_titulo_livro(info[1])
    if o
      o.titulo_livro = info[2]
      if o.invalid?
        puts o.errors.full_messages
        return
      else
        o.save
      end
    else
      puts "Nao existe esse dado"
    end
  elsif info[0] == "ano_publicacao"
    ano = info[1].to_i
    o = Book.find_by_ano_publicacao(ano)
    if o
      o.ano = info[2]
      if o.invalid?
        puts o.errors.full_messages
        return
      else
        o.save
      end
    else
      puts "Nao existe esse dado"
    end
  else
    puts "Comando inválido"
  end 
end

def alteracaoDocument(comando)
  o = Document.new
  info = splitaComando(comando)
  if info[0] == "rg"
    rg = info[1].to_i
    o = Document.find_by_rg(rg)
    if o
      o.rg = info[2].to_i
      if o.invalid?
        puts o.errors.full_messages
        return
      else
        o.save
      end
    else
      puts "Nao existe esse dado"
    end
  elsif info[0] == "cpf"
    cpf = info[1].to_i
    o = Document.find_by_cpf(cpf)
    if o
      o.cpf = info[2].to_i
      if o.invalid?
        puts o.errors.full_messages
        return
      else
        o.save
      end
    else
      puts "Nao existe esse dado"
    end
  else
    puts "Comando inválido"
  end
end

def alteracaoGenre(comando)
  o = Genre.new
  info = splitaComando(comando)
  if info[0] == "tipo"
    o = Genre.find_by_tipo(info[1])
    if o
      o.tipo = info[2]
      if o.invalid?
        puts o.errors.full_messages
        return
      else
        o.save
      end
    else
      puts "Nao existe esse dado"
    end
  else
    puts "Comando inválido"
  end
end

def alteracao(comandos,tabela)
  comandos = comandos.split(/[()]/)
  if comandos.length !=2
    puts "Só pode um atributo"
    return
  end
  comando = comandos[1]
  case tabela 
  when 1
    alteracaoAuthor(comando)
  when 2
    alteracaoBook(comando)
  when 3
    alteracaoDocument(comando)
  when 4
    alteracaoGenre(comando)
  else
    puts "Não pode realizar esse comando, ou tabela nao existe"
  end
end