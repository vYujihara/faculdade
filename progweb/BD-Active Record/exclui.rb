require 'active_record'
require 'rubygems'

def excluiAuthor(comando)
  o = Author.new
  info = splitaComando(comando)
  if info[0] == "nome"
    o = Author.find_by_nome(info[1])
  elsif info[0] == "sobrenome"
    o = Author.find_by_sobrenome(info[1])
  elsif info[0] == "id"
    id = info[1].to_i
    o = Author.find_by_id(id)
  end
  if o
    o.destroy
  else
    puts "Nao existe esse dado"
  end
end

def excluiBook(comando)
  o = Book.new
  info = splitaComando(comando)
  if info[0] == "titulo_livro"
    o = Book.find_by_titulo_livro(info[1])
  elsif info[0] == "ano_publicacao"
    ano = info[1].to_i
    o = Book.find_by_ano_publicacao(ano)
  elsif info[0] == "id"
    id = info[1].to_i
    o = Book.find_by_id(id)
  end
  if o
    o.destroy
  else
    puts "Nao existe esse dado"
  end
end

def excluiDocument(comando)
  o = Document.new
  info = splitaComando(comando)
  if info[0] == "rg"
    rg = info[1].to_i
    o = Document.find_by_rg(rg)
  elsif info[0] == "cpf"
    cpf = info[1].to_i
    o = Document.find_by_cpf(cpf)
  elsif info[0] == "id"
    id = info[1].to_i
    o = Document.find_by_id(id)
  end
  if o
    o.destroy
  else
    puts "Nao existe esse dado"
  end
end

def excluiGenre(comando)
  o = Genre.new
  info = splitaComando(comando)
  if info[0] == "tipo"
    o = Genre.find_by_tipo(info[1])
  elsif info[0] == "id"
    id = info[1].to_i
    o = Genre.find_by_id(id)
  end
  if o
    o.destroy
  else
    puts "Nao existe esse dado"
  end
end

def exclusao(comandos,tabela)
  comandos = comandos.split(/[()]/)
  if comandos.length !=2
    puts "Só pode um atributo"
    return
  end
  comando = comandos[1]
  case tabela 
  when 1
    excluiAuthor(comando)
  when 2
    excluiBook(comando)
  when 3
    excluiDocument(comando)
  when 4
    excluiGenre(comando)
  else
    puts "Não pode realizar esse comando, ou tabela nao existe"
  end
  
end