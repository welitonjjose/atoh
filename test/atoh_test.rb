require 'minitest/autorun'
require 'webmock/minitest'
require './lib/atoh'

class AtohTest < Minitest::Test
  
  def test_the_truth
    atoh = Atoh.serialize(
      fruits: ["banana", "lemon", "watermelon", "apple", "orange"],
      vegetables: ["beet", "carrot", "onion", "lettuce", "olive"]
    )

    expect = [
      {:fruits=>"banana", :vegetables=>"beet"},
      {:fruits=>"lemon", :vegetables=>"carrot"},
      {:fruits=>"watermelon", :vegetables=>"onion"},
      {:fruits=>"apple", :vegetables=>"lettuce"},
      {:fruits=>"orange", :vegetables=>"olive"}
    ]

    assert atoh == expect
  end

  def test_the_truth_with_dinamic_arraies
    atoh = Atoh.serialize(
      fruits: ["banana", "lemon", "orange"],
      vegetables: ["beet", "carrot", "onion", "lettuce"],
      food: ["rice", "been"],
    )

    expect = [
      {:fruits=>"banana", :vegetables=>"beet", :food=>"rice"},
      {:fruits=>"lemon", :vegetables=>"carrot", :food=>"been"}, 
      {:fruits=>"orange", :vegetables=>"onion"}, 
      {:vegetables=>"lettuce"},       
    ]

    assert atoh == expect
  end

end