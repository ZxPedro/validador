class VerificarCpf

    attr_accessor :cpf
    
    def verificar
        @cpf = cpf
        
        if cpf.length != 11 # Verifica se a quantidade de dígitos é inválida
            puts "Quantidade inválida!"
        

         # Verifica se o cpf informado faz parte da sequência abaixo. Se for afirmativo, retorna CPF inválido.
        elsif cpf == "11111111111" ||
            cpf == "22222222222" ||
            cpf == "33333333333" ||
            cpf == "44444444444" ||
            cpf == "55555555555" ||
            cpf == "66666666666" ||
            cpf == "77777777777" ||
            cpf == "88888888888" ||
            cpf == "99999999999"
            
            puts "CPF inválido!"
        else
            resultado = cpf.split("") # Separa os dígitos para o cálculo
        
            # Início do verificador do primeiro dígito
            d1 = resultado[0].to_i * 10  
            d2 = resultado[1].to_i * 9 
            d3 = resultado[2].to_i * 8 
            d4 = resultado[3].to_i * 7  
            d5 = resultado[4].to_i * 6 
            d6 = resultado[5].to_i * 5 
            d7 = resultado[6].to_i * 4 
            d8 = resultado[7].to_i * 3 
            d9 = resultado[8].to_i * 2 
            d10 = resultado[9]
            d11 = resultado[10] 
            soma = d1 + d2 + d3 + d4 + d5 + d6 + d7 + d8 + d9
            mod1 = soma % 11
            dv1 = 11 - mod1
            # Fim do verificador do primeiro dígito
        
            # Início do verificador do segundo dígito
            d1 = resultado[0].to_i * 11  
            d2 = resultado[1].to_i * 10 
            d3 = resultado[2].to_i * 9 
            d4 = resultado[3].to_i * 8  
            d5 = resultado[4].to_i * 7 
            d6 = resultado[5].to_i * 6 
            d7 = resultado[6].to_i * 5 
            d8 = resultado[7].to_i * 4 
            d9 = resultado[8].to_i * 3 
            multi = dv1 * 2
            soma = d1 + d2 + d3 + d4 + d5 + d6 + d7 + d8 + d9 + multi
            mod2 = soma % 11
            dv2 = 11 - mod2
            # Fim do verificador do segundo dígito
        
            # Verifica se o CPF é valido. Caso seja negativo, retorna inválido."
            if dv1.to_s == d10 and dv2.to_s == d11
                puts "CPF validado com sucesso!"
            else
                puts "CPF inválido!"
            end
        end
    end
end

puts "Digite um cpf para fazer a validação"
cpf = gets.chomp.gsub(/[.-]/, '')

cpf1 = VerificarCpf.new

cpf1.cpf = cpf
cpf1.verificar
