

class API

  def self.fetch
    uri = URI("https://ghibliapi.herokuapp.com/films")
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    hash.each do |movie_hash|
      movie = Movies.new
      movie.title = movie_hash["title"]
      movie.director = movie_hash["director"]
      movie.producer = movie_hash["producer"]
      movie.release_date = movie_hash["release_date"]
    end
  end



end
