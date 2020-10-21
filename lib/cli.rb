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
        ask_user_for_movie_choice
    else
      puts "Goodbye!"
    end

  end

  def display_list_of_movies
    Movies.all.each.with_index(1) do |movie, index|
      puts "#{index}. #{movie.title}"
    end
  end

  def ask_user_for_movie_choice
    puts "Enter the number of the movie you'd like to know more about"
    index = gets.strip.to_i - 1

    until index.between?(0, Movies.all.length - 1)
      puts "Sorry invalid input. Choose a valid number."
      index = gets.strip.to_i - 1
    end

    movie_instance = Movies.all[index]

    display_movie_details(movie_instance)
  end

  def display_movie_details(movie)
    sleep(1)
    puts "\n"
    puts movie.title
    puts "Director: " + movie.director
    puts "Producer: " + movie.producer
    puts "Release Date: " + movie.release_date
    sleep(2)
    puts "Would you like to see the list again of movies?"
    sleep(1)
    puts "Type 'yes' to continue or any other key to exit"

     user_input = gets.strip.downcase

     if user_input == 'yes' || user_input == 'y'
         puts "Good Choice!"
         display_list_of_movies
         ask_user_for_movie_choice
    else
      puts "Goodbye!"
    end

  end


end
