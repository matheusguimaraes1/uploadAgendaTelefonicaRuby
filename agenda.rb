=begin
Bem vindo! Nessa  agenda telefônica, poderemos adicionar, editar e remover contatos.
Teremos acesso a todos os contatos armazenados e também a um único contato (conforme a preferência do usuário.)
As informações que teremos em casa contato serão; telefone e nome do individuo. 

    Para escrever esse algoritmo, usei arrays, condicionais, comandos de entrada e saída e loop.
    
=end

@agenda = [
    {nome: "Matheus", telefone: "21982519287"},
    {nome: "Eustácio", telefone: "2134672258"},
    {nome: "Pereira", telefone: "21972119958"},
    {nome: "Homer Simpson", telefone: "822259987"}
]

def todosContatos
    @agenda.each do |contato|
        puts "#{contato [:nome]} - #{contato [:telefone]}"
    end
  puts "------------------------------------"
end

def adicionarContato
    puts "Insira o nome do contato:"
    nome = gets.chomp
    puts "Insira o número do contato:"
    telefone = gets.chomp

    @agenda << {nome: nome, telefone: telefone}
end

def verContato
    puts "Que contato você quer ver?"
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase.include?(nome.downcase)
            puts "#{contato[:nome]} - #{contato[:telefone]}"
            puts "--------------------------------------"
        end
    end
end
def editarContato
    puts "Qual contato você deseja editar?"
    nome = gets.chomp
    
    @agenda.each do |contato|
        if contato[:nome].downcase == (nome.downcase)
            puts "Edite o nome (Caso não queira fazer alteração, tecle enter):"
            nomeEditado = contato[:nome]

            contato[:nome] = gets.chomp
            contato[:nome] = contato[:nome].empty? ? nomeEditado : contato[:nome]

            puts "Edite o telefone (Caso não queira fazer alteração, tecle enter):"
            tefoneEditado = contato[:telefone]

            contato[:nome] = gets.chomp
            contato[:nome] = contato[:nome].empty? ? tefoneEditado : contato[:nome]


        end
    end
end

def removerContato
    puts "Qual contato deseja remover?"
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase == (nome.downcase)
        indice = @agenda.index(contato)
        @agenda.delete_at(indice)
        break
        end
    end
end

loop do 

    puts "1. Todos os contatos\n2. Adicionar contato\n3. Ver contato\n4. Editar contato\n5. Remover contato\n0. Sair"
    entradaFuncao = gets.chomp.to_i

    case 
    when entradaFuncao == 0
        puts "Até mais! Tenha um ótimo dia."
        break
        when entradaFuncao == 1
            todosContatos 
        when entradaFuncao == 2
            adicionarContato
        when entradaFuncao == 3
            verContato
        when entradaFuncao == 4
            editarContato
        when entradaFuncao == 5
            removerContato
    end


end
