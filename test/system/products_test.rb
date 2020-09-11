require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url

    # This takes a screenshot and opens the screenshot for you
    # in the browser, as long as you have the launchy gem!!
    # save_and_open_page

    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end

  test "creating a new product" do
    login_as users(:renata)

    visit new_product_url

    count = Product.count

    # id of the input
    fill_in "product_name", with: "Queen T-Shirt"
    fill_in "product_tagline", with: "shirt cool band"

    # text of the button
    click_on 'Create Product'

    # checking if the redirect_to took me to the correct place
    assert_equal root_path, page.current_path

    # checking if the new product was really created in the DB
    assert_equal Product.count, count + 1
  end
end
