require 'spec_helper'

describe "ShareOptions" do
  describe "GET /share_options.json" do
    it "displays share options" do
    order = Order.create
    summer =  ShareOption.create(name: "Summer Vegetable Share",
      price: 570.00,
      start_date: "2014-06-15 [09:00:00]",
      end_date: "2014-10-15 [09:00:00]",
      is_season: true,
      num_of_distributions: 20,
      min_price: 515.00,
      max_price: 705.00)

    fruit = ShareOption.create(name: "Fruit Shares",
      description: "a really cool fruit share",
      image_url: "image",
      price: 100.00,
      start_date: "2014-06-15 [09:00:00]",
      end_date: "2014-12-15 [09:00:00]",
      is_season: false,
      num_of_distributions: 20)
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/share_options.json?order_id=' + order.id.to_s
      response.body.should include(summer.name, summer.start_date.to_s, summer.end_date.to_s, summer.is_season.to_s, summer.num_of_distributions.to_s, summer.price.to_s, summer.max_price.to_s, summer.min_price.to_s,
        fruit.name, fruit.description, fruit.image_url, fruit.price.to_s, fruit.start_date.to_s, fruit.end_date.to_s, fruit.is_season.to_s, fruit.num_of_distributions.to_s)
    end
  end
end
