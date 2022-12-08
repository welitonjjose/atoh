# Atoh
Atoh is a flexible gem that aids in array serialize.


## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add atoh

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install atoh

## Usage

```sh
fruts = ["banana", "lemon", "orange"]
vegetables=  ["beet", "carrot", "onion", "lettuce"]

Atoh.serialize(
fruts: fruts,
vegetables: vegetables
)
```
###### Output Json

```ruby
{
    [
      {:fruits=>"banana", :vegetables=>"beet"},
      {:fruits=>"lemon", :vegetables=>"carrot"},
      {:fruits=>"watermelon", :vegetables=>"onion"},
      {:fruits=>"apple", :vegetables=>"lettuce"},
      {:fruits=>"orange", :vegetables=>"olive"}
    ]
}
```

#### Contributing
@welitonjjose
