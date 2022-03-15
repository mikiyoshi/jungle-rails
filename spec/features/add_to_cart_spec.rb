require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do
  # pending "add some scenarios (or delete) #{__FILE__}"
  # https://thoughtbot.com/upcase/test-driven-rails-resources/capybara.pdf
  # http://cheatrags.com/capybara
  # https://github.com/DatabaseCleaner/database_cleaner#rspec-with-capybara-example
  before :each do
    @category = Category.create! name: 'Apparel'
  
    10.times do |n|
      @category.products.create!(
        name: Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end


  scenario "A user can add a product to their cart when not logged in" do
    # visit the home page
    visit '/'
    # find a product listing
    first('article.product').find_button('Add').click
    expect(page).to have_content('My Cart (1)')
    page.save_screenshot
  end
end
