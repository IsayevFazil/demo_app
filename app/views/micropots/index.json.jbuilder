json.array!(@micropots) do |micropot|
  json.extract! micropot, :id, :content, :user_id
  json.url micropot_url(micropot, format: :json)
end
