json.array!(@adventure_items) do |adventure_item|
  json.extract! adventure_item, :id, :title, :location, :category, :points, :picture
  json.url adventure_item_url(adventure_item, format: :json)
end
