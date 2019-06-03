require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    num = @number.to_i
    "#{@phrase * num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."}"
    #"#{params.join(" ").capitalize}"      =====> Not sure why this isn't a better way?
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]

    num1 = @num1.to_i
    num2 = @num2.to_i

    if @op.downcase == "add"
      "#{num1 + num2}"
    elsif @op.downcase == "subtract"
      "#{num2 - num1}"
    elsif @op.downcase == "multiply"
      "#{num1 * num2}"
    elsif @op.downcase == "divide"
      "#{num1/num2}"
    else
      "Invalid input"
    end
  end
end
