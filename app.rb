require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number **2}"
  end

  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @concatenated_string = params[:word1]+" "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]+"."
    "#{@concatenated_string}"
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    @sum = @num1 + @num2
    @diff = @num1 - @num2
    @product = @num1 * @num2
    @quotient = @num1 / @num2
    if @operation == "add"
      "#{@sum}"
    elsif @operation == "subtract"
      "#{@diff}"
    elsif @operation == "multiply"
      "#{@product}"
    else
      "#{@quotient}"
    end
  end
end
