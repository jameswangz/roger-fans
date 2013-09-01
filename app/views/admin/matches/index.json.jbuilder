json.array!(@admin_matches) do |admin_match|
  json.extract! admin_match, :ordinal
  json.url admin_match_url(admin_match, format: :json)
end