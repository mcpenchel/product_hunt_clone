require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # instance method, you write the .name_of_the_method
  # class method, you write the #name_of_the_method
  test ".full_name" do
    renata = users(:renata)
    assert_equal "Renata Mastodon Grassi", renata.full_name
  end
end
