require 'pry'

class API

  def self.fetch
    uri = URI("https://ghibliapi.herokuapp.com/films")
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    binding.pry


  end




end
