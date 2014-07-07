ShareOption.delete_all
PickupLocation.delete_all

puts "Creating Share Options..."
ShareOption.create(name: "Summer Vegetable Share",
  description: nil,
  image_url: nil,
  min_price: 515,
  max_price: 635,
  price: 570.00,
  start_date: "2014-06-15 [09:00:00]",
  end_date: "2014-10-15 [09:00:00]",
  is_season: true,
  num_of_distributions: 20)

ShareOption.create(name: "Summer and Fall Vegetable Share",
  description: nil,
  image_url: nil,
  min_price: 650,
  max_price: 780,
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
  image_url: "http://i.imgur.com/eDaMHLZ.jpg",
  price: 195.00,
  start_date: "2014-06-15 [09:00:00]",
  end_date: "2014-10-15 [09:00:00]",
  num_of_distributions: 20)

ShareOption.create(name: "Flower Shares",
  description: "Enjoy a season of fresh local flowers! Organically-grown. A weekly bouquet of flowers picked
  fresh on our farm.",
  image_url: "http://i.imgur.com/yniSS5W.jpg",
  price: 100.00,
  start_date: "2014-07-15 [09:00:00]",
  end_date: "2014-09-15 [09:00:00]",
  num_of_distributions: 10)

ShareOption.create(name: "Egg Shares",
  description: "Delicious local eggs! Pasture-raised hens graze in fields and eat organic grain. Eggs
  are available with Summer and Fall seasons. Sourced from local egg farmers.",
  image_url: "http://i.imgur.com/vbCt4Fq.jpg",
  price: 6.50,
  start_date: "2014-07-15 [09:00:00]",
  end_date: "2014-12-15 [09:00:00]",
  num_of_distributions: 24)

ShareOption.create(name: "Home Delivery",
  description: "An excellent deal for convenient and green delivery. Have the hard-core bikers at Metro
  Pedal Power deliver your share direct to you. Tricycle Delivery to Cambridge, Somerville, and parts of
  Boston. Includes delivery of any add-on shares you get too!",
  image_url: "http://i.imgur.com/lczRfAg.jpg",
  price: 200.00,
  start_date: "2014-07-15 [09:00:00]",
  end_date: "2014-12-15 [09:00:00]",
  num_of_distributions: 24)

puts "Done."

puts "Creating Pickup Locations..."
PickupLocation.create(name: "Brighton at Whole Foods Parking Lot",
  description: nil,
  address_1: "15 Washington Street",
  city: "Brighton",
  state: "MA",
  zip: "02135",
  day_of_week: "Thursday",
  start_time: 1530,
  end_time: 1900,
  season: "Summer")

PickupLocation.create(name: "Boston South Station Farmers' Market",
  description: nil,
  address_1: "Dewey Square",
  city: "Boston",
  state: "MA",
  zip: "02101",
  day_of_week: "Tuesday",
  start_time: 1200,
  end_time: 1800,
  season: "Summer")

PickupLocation.create(name: "Cambridge Whole Foods parking lot",
  description: nil,
  address_1: "115 Prospect Street",
  city: "Cambridge",
  state: "MA",
  zip: "02139",
  day_of_week: "Wednesday",
  start_time: 1630,
  end_time: 1930,
  season: "Summer")

PickupLocation.create(name: "Cambridge Whole Foods parking lot",
  description: nil,
  address_1: "115 Prospect Street",
  city: "Cambridge",
  state: "MA",
  zip: "02139",
  day_of_week: "Friday",
  start_time: 1430,
  end_time: 1800,
  season: "Summer")

PickupLocation.create(name: "Clover Food Hub",
  description: "Boxed Shares",
  address_1: "1075 Cambridge Street",
  city: "Cambridge",
  state: "MA",
  zip: "02139",
  day_of_week: "Friday",
  start_time: 1600,
  end_time: 2030,
  season: "Summer")

PickupLocation.create(name: "Clover Harvard Square",
  description: "Boxed Shares",
  address_1: "7 Holyoke Street",
  city: "Cambridge",
  state: "MA",
  zip: "02139",
  day_of_week: "Friday",
  start_time: 1600,
  end_time: 2330,
  season: "Summer")

PickupLocation.create(name: "Clover Kendall Square",
  description: "Boxed Shares",
  address_1: "5 Cambridge Center",
  city: "Cambridge",
  state: "MA",
  zip: "02139",
  day_of_week: "Friday",
  start_time: 1600,
  end_time: 2230,
  season: "Summer")

PickupLocation.create(name: "Jamaica Plain First Baptist Church Parking Lot",
  description: nil,
  address_1: "633 Centre Street",
  city: "Jamaica Plain",
  state: "MA",
  zip: "02130",
  day_of_week: "Thursday",
  start_time: 1600,
  end_time: 1900,
  season: "Summer")

PickupLocation.create(name: "Newton at Temple Shalom",
  description: nil,
  address_1: "175 Temple Street",
  city: "West Newton",
  state: "MA",
  zip: "02465",
  day_of_week: "Thursday",
  start_time: 1530,
  end_time: 1900,
  season: "Summer")

PickupLocation.create(name: "Somerville at the Growing Center",
  description: nil,
  address_1: "22 Vinal Ave",
  city: "Somerville",
  state: "MA",
  zip: "02143",
  day_of_week: "Wednesday",
  start_time: 1615,
  end_time: 1915,
  season: "Summer")

PickupLocation.create(name: "Somerville at Metro Pedal Power",
  description: nil,
  address_1: "11 Olive Square",
  city: "Somerville",
  state: "MA",
  zip: "02143",
  day_of_week: "Thursday",
  start_time: 1500,
  end_time: 1830,
  season: "Summer")

PickupLocation.create(name: "Somerville at Whole Foods",
  description: nil,
  address_1: "45 Beacon Street",
  city: "Somerville",
  state: "MA",
  zip: "02143",
  day_of_week: "Wednesday",
  start_time: 1500,
  end_time: 1830,
  season: "Summer")


PickupLocation.create(name: "Lexington Vistaprint",
  description: "Employees Only",
  address_1: "95 Hayden Avenue",
  city: "Lexington",
  state: "MA",
  zip: "02421",
  day_of_week: "Wednesday",
  start_time: 1500,
  end_time: 1830,
  season: "Summer")

PickupLocation.create(name: "Worcester at the First Unitarian Church",
  description: nil,
  address_1: "90 Main Street",
  city: "Worcester",
  state: "MA",
  zip: "01608",
  day_of_week: "Wednesday",
  start_time: 1500,
  end_time: 1900,
  season: "Summer")

puts "Done."

