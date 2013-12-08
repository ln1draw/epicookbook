json.array!(@recipes) do |recipe|
  json.extract! recipe, :cook_time, :prep_time, :name, :description, :steps, :rating
  json.url recipe_url(recipe, format: :json)
end