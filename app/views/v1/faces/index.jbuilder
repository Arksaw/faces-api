json.array! @faces do |face|
  json.(face, :name, :description)
end
