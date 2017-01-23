require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../friends' )

class TestFriends < MiniTest::Test

   def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Marc", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      } 
    }
    
    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["soup","bread"]
      } 
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      } 
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Marc"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      } 
    }

    @person5 = {
      name: "Marc",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      } 
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end


  # def test_fave_show
  #   result = fave_show(@person5)
  #   assert_equal("Scrubs",result)
  # end


  # def test_fave_food
  #   result_1 = fave_food(@person2, "soup")
  #   result_2 = fave_food(@person2, "banana")
  #   assert_equal(true, result_1)
  #   assert_equal(false, result_2)
  # end

  # def test_add_friend
  #   result = add_friend(@person4, "Fred")
  #   assert_equal("Fred", result)
  # end

  # def test_lose_friend
  #   result = lose_friend(@person3, "Jay")
  #   assert_equal(false, result)
  # end

  # def test_total_money
  #   result = total_money(@people)
  #   assert_equal(143, result)
  # end

  # def test_moneylender
  #   result = moneylender(@person5, @person4, 50)
  #   assert_equal([["Marc", 50],["Keith", 70]], result)
  # end

  # def test_total_food
  #   result = total_food(@people)
  #   assert_equal(["charcuterie", "soup","bread", "ratatouille", "stew", "spaghetti", "spinach"], result)
  # end

  # def test_no_mates
  #     result = no_mates(@people)
  #     assert_equal(["Marc"], result)
  # end

  def test_similar_likes
    result = similar_likes(@people)
    assert_equal([["Jay","Marc"],["Val", "Keith"]], result)
  end

end


























