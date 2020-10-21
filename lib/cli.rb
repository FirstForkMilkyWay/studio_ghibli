class ClI

  def start
    puts 'Welcome'
    API.fetch
    self.menu
  end

  def menu
    puts "Would you like to see a list of Studio Ghibli's movies?"
    puts "Type 'yes' to continue or any other key to exit"

    user_input = gets.strip.downcase

    if user_input == 'yes' || user_input == 'y'
        puts "Good Choice!"
        display_list_of_movies
    end

  end

  def display_list_of_movies
    Movies.all.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.title}"
    end
  end



end
