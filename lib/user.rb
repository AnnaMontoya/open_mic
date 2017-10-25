require './lib/joke'

class User
  attr_reader :name, :jokes

  def initialize(name)
    @name   = name
    @jokes  = []
    @told   = 0
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(name, joke)
  
  end

end
