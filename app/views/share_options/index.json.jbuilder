json.array!(@share_options) do |share_option|
  json.extract! share_option, :id, :name, :description, :image_url, :price, :start_date, :end_date, :num_of_distributions, :is_season, :max_price, :min_price
  json.url share_option_url(share_option, format: :json)
end
