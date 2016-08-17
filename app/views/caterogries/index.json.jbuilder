json.array!(@caterogries) do |caterogry|
  json.extract! caterogry, :id, :name, :user_id
  json.url caterogry_url(caterogry, format: :json)
end
