json.array!(@invites) do |invite|
  json.extract! invite, :user_id, :event_id, :attending
  json.url invite_url(invite, format: :json)
end
