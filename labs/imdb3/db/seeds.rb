Movie.delete_all
Director.delete_all
Studio.delete_all
Actor.delete_all

m1 = Movie.create(:name => "Jaws")
m2 = Movie.create(:name => "Bond")
m3 = Movie.create(:name => "Nemo")

d1 = Director.create(:name => "Speilberg")
d2 = Director.create(:name => "Ford")
d3 = Director.create(:name => "Eastwood")

s1 = Studio.create(:name => "Universal")
s2 = Studio.create(:name => "WB")
s3 = Studio.create(:name => "Paramount")

a1 = Actor.create(:name => "Daniel Day Lewis")
a2 = Actor.create(:name => "Hugh Jackman")
a3 = Actor.create(:name => "Anne Hathaway")

s1.movies = [m1]
d1.movies = [m2]

m1.actors = [a1]