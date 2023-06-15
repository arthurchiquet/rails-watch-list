require "json"
require "open-uri"

url = "https://tmdb.lewagon.com/movie/top_rated"
json_serialized = URI.open(url).read
json_parsed= JSON.parse(json_serialized)

json_parsed["results"].each do |result|
  Movie.create!(title: result["original_title"], overview: result["overview"], poster_url: result["poster_path"], rating: result["vote_average"])
end
