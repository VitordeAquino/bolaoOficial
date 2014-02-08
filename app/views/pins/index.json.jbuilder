json.array!(@pins) do |pin|
  json.extract! pin, :id, :descricao
  json.url pin_url(pin, format: :json)
end
