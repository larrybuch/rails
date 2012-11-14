class Main
  def self.run
    puts "Enter a movie or (q)uit"
    movie = gets.chomp

    movies = []

    while movie != 'q'

    quote = HTTParty.get("http://www.omdbapi.com/?i=&t=#{movie}")

    puts "#{quote}"


    puts "Enter a movie or (q)uit"
    movie = gets.chomp
    end

  end
end