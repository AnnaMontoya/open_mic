require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/user'

class UserTest < Minitest::Test
  def test_it_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

  def test_it_has_a_name
    sal = User.new("Sal")

    assert_equal "Sal", sal.name
  end

  def test_it_can_have_another_name
    ali = User.new("Ali")

    assert_equal "Ali", ali.name
  end

  def test_it_has_jokes
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})

    assert_instance_of Joke, joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
  end

  def test_user_has_a_collection_of_jokes
    sal = User.new("Sal")

    assert_equal [], sal.jokes
  end

  def test_user_can_learn_jokes
    sal = User.new("Sal")

    sal.learn({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    sal.jokes
  end

  def test_users_can_tell_jokes
    joke = Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."})
    sal = User.new("Sal")
    ali = User.new("Ali")

    sal.tell(User.new("Ali"), Joke.new({id: 1, question: "Why did the strawberry cross the road?", answer: "Because his mother was in a jam."}))
    ali.learn(joke)
    ali.jokes
  end

end
