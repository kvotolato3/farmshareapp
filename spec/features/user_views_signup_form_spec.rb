require 'spec_helper'

feature 'User views signup form' do
  scenario 'successfully' do
  visit root_path
    expect(page).to have_content "Enjoy a delicious season of high quality organic produce."
  end
end

feature 'User views seasons' do
  scenario 'successfully' do

   summer =  ShareOption.create(name: "Summer Vegetable Share",
      description: nil,
      image_url: nil,
      price: 570.00,
      start_date: "2014-06-15 [09:00:00]",
      end_date: "2014-10-15 [09:00:00]",
      is_season: true,
      num_of_distributions: 20)

    summerandfall = ShareOption.create(name: "Summer and Fall Vegetable Share",
      description: nil,
      image_url: nil,
      price: 705.00,
      start_date: "2014-06-15 [09:00:00]",
      end_date: "2014-12-15 [09:00:00]",
      is_season: true,
      num_of_distributions: 24)

    visit root_path
      expect(page).to have_content summerandfall.name && summer.name
  end
end

feature 'User views extra options' do
  scenario 'successfully' do

   fruit =  ShareOption.create(name: "Fruit Shares",
      description: "a deluxe option",
      price: 195.00,
      start_date: "2014-06-15 [09:00:00]",
      end_date: "2014-10-15 [09:00:00]",
      num_of_distributions: 20)

    flower = ShareOption.create(name: "Flower Shares",
      description: "fresh flowers!",
      price: 100.00,
      start_date: "2014-07-15 [09:00:00]",
      end_date: "2014-09-15 [09:00:00]",
      num_of_distributions: 10)

    visit root_path
      expect(page).to have_content
      fruit.name &&
      fruit.price &&
      fruit.num_of_distributions &&
      flower.name &&
      flower.price &&
      flower.num_of_distributions
      save_and_open_page
  end
end

