json.array!(@events) do |event|
  json.extract! event, :start_on, :end_on, :host_id, :location, :title, :description
  json.url event_url(event, format: :json)
end
