class CalculadoraController < ApplicationController
    
    def home
        @number1 = params[:number1].to_i
        @number2 = params[:number2].to_i
    end
    
    def soma
        home
        @soma = @number1 + @number2
    end

    def subtracao
        home
        @subtracao = @number1 - @number2
    end

    def divisao
        home
        @divisao = @number1.to_f / @number2.to_f
    end

    def multiplicacao
        home
        @multiplicacao = @number1 * @number2
    end
end