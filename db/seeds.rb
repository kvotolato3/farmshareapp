ShareOption.delete_all

ShareOption.create(name: "Summer Vegetable Share",
  description: nil,
  image_url: nil,
  price: 570.00,
  start_date: "2014-06-15 [09:00:00]",
  end_date: "2014-10-15 [09:00:00]",
  is_season: true,
  num_of_distributions: 20)

ShareOption.create(name: "Summer and Fall Vegetable Share",
  description: nil,
  image_url: nil,
  price: 705.00,
  start_date: "2014-06-15 [09:00:00]",
  end_date: "2014-12-15 [09:00:00]",
  is_season: true,
  num_of_distributions: 24)

ShareOption.create(name: "Fruit Shares",
  description: "A deluxe option including locally grown fruit for the Summer season.
  It begins in June with Strawberries and continues with Blueberries, Plums, Peaches, Melons
  and a wide variety of Apples in the fall. Sourced from local orchards that use low spray
  Integrated Pest Management. Some fruit will be organic from Red Fire. Must order a vegetable
  share to get fruit.",
  image_url: nil,
  price: 195.00,
  start_date: "2014-06-15 [09:00:00]",
  end_date: "2014-10-15 [09:00:00]",
  num_of_distributions: 20)

ShareOption.create(name: "Flower Shares",
  description: "Enjoy a season of fresh local flowers! Organically-grown. A weekly bouquet of flowers picked
  fresh on our farm.",
  price: 100.00,
  start_date: "2014-07-15 [09:00:00]",
  end_date: "2014-09-15 [09:00:00]",
  num_of_distributions: 10)

ShareOption.create(name: "Egg Shares",
  description: "Delicious local eggs! Pasture-raised hens graze in fields and eat organic grain. Eggs
  are available with Summer and Fall seasons. Sourced from local egg farmers.",
  price: 6.50,
  start_date: "2014-07-15 [09:00:00]",
  end_date: "2014-12-15 [09:00:00]",
  num_of_distributions: 24)


ShareOption.create(name: "Home Delivery",
  description: "An excellent deal for convenient and green delivery. Have the hard-core bikers at Metro
  Pedal Power deliver your share direct to you. Tricycle Delivery to Cambridge, Somerville, and parts of
  Boston. Includes delivery of any add-on shares you get too!",
  price: 200.00,
  start_date: "2014-07-15 [09:00:00]",
  end_date: "2014-12-15 [09:00:00]",
  num_of_distributions: 24)





