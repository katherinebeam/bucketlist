json.array!(@adventure_items) do |adventure_item|
  json.extract! adventure_item, :id, :title, :description, :neighborhood, :city, :state, :country, :category, :picture
  json.url adventure_item_url(adventure_item, format: :json)
end
