class Main
  def self.run
    puts "(e)nter 5 stock symbols or (q)"
    response = gets.chomp

    while response != 'q'
      s1 = gets.chomp
      q1 = gets.chomp

      Stoq.create(:symbol => s1, :quote => q1)

      puts "(e)nter 5 stock symbols or (q)"
      response = gets.chomp
    end

  end
end