require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  #accepts a name and returns the name backwards
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  #that accepts a number and returns the square of that number.
  get '/square/:number' do
    @number = params[:number].to_i*params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @the_phrase = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      @the_phrase << @phrase
      @the_phrase << "\n"
    end
    "#{@the_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = ""
    @string << "#{params[:word1]} " "#{params[:word2]} " "#{params[:word3]} " "#{params[:word4]} " "#{params[:word5]}."
    @string
  end

  get '/:operation/:number1/:number2' do
    @result = []
    @operation = params[:operation]
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    if @operation == "add"
      @result<<@num_1+@num_2
    elsif @operation == "subtract"
      @result<<@num_1-@num_2
    elsif @operation == "divide"
      @result<<@num_1/@num_2
    elsif @operation == "multiply"
      @result<<@num_1*@num_2
    else 
      nil
    end
    @result.to_s
  end

end