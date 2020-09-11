class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    "#{first_name} #{last_name}"
  end

  # If your method has more than one possible outcome,
  # you need to test all of them! Always think of all the
  # test scenarios possible for a given method or User Story!

  # def some_method_which_returns_boolean?
  #   if something
  #     true
  #   else
  #     false
  #   end
  # end
end
