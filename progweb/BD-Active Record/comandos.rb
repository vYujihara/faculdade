$:.push './'
require 'author.rb'
require 'document.rb'
require 'book.rb'
require 'genre.rb'
require 'inclusao.rb'
require 'lista.rb'
require 'exclui.rb'
require 'alteracao.rb'

def splitaComando(comando)
  info = comando.split(/[=>]/,-1)
  return info
end

frase = " "
operacoes = { "inclusao" => 1, "alteracao" => 2, "exclusao" => 3, "lista" => 4}
listaTabelas = { "authors" => 1, "books" => 2, "documents" => 3, "genres" => 4, "books_genres" => 5}
  

while frase != "quit"
  puts "Escreva uma operacao ou escreva 'quit' para sair"
  frase = gets.chomp
  comandos = frase.split(/ /, 3)
  
  operacao = operacoes[comandos[0]]
  tabelaEscolhida = listaTabelas[comandos[1]]
  comandoEscolhido = comandos[2]
  case operacao
  
  when 1
    inclusao(comandoEscolhido,tabelaEscolhida)
  when 2
    alteracao(comandoEscolhido,tabelaEscolhida)
  when 3
    exclusao(comandoEscolhido,tabelaEscolhida)
  when 4
    listagem(comandos, tabelaEscolhida)
  else
    if frase != "quit"
      puts "Operacao inválida"
    end
  end
end