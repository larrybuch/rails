Movie.create(:name => "Skyfall", :description => "James Bond", :rating => "PG")
Movie.create(:name => "Goldfinger", :description => "The best", :rating => "R")
Movie.create(:name => "James Bond I", :description => "The worst", :rating => "G")
Movie.create(:name => "Bourne Ultimatium", :description => "The best worst", :rating => "T")
Movie.create(:name => "Hey Goldmember", :description => "Austin Powers", :rating => "PG-13")

Director.create(:name => "Speilberg", :age => 60, :gender => "male")
Director.create(:name => "Scorcese", :age => 30, :gender => "female")
Director.create(:name => "Lucas", :age => 40, :gender => "male")

Actor.create(:name => "Daniel Day Lewis", :gender => "male")
Actor.create(:name => "Megan Fox", :gender => "female")
Actor.create(:name => "Daniel Craig", :gender => "male")

