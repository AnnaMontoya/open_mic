require './lib/joke'
require 'csv'

class User
  attr_reader :name, :jokes

  def initialize(name)
    @name   = name
    @jokes  = []
  end

  def learn(joke)
    if @jokes.include?(joke)
      @jokes
    else
      @jokes << joke
    end
  end

  def tell(name, joke)
    name.jokes << joke
  end

  def perform_routine_for(name)
    @jokes.map do |joke|
      tell(name, joke)
    end
  end
end
