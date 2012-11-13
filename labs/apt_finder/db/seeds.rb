Apartment.delete_all
Tennant.delete_all
Pet.delete_all

a1 = Apartment.create(:name => "A1", :rooms => 3, :rent => 1000)
a2 = Apartment.create(:name => "A2", :rooms => 2, :rent => 2000)
a3 = Apartment.create(:name => "A3", :rooms => 1, :rent => 3000)
a4 = Apartment.create(:name => "A4", :rooms => 4, :rent => 4000)
a5 = Apartment.create(:name => "A5", :rooms => 5, :rent => 5000)

t1 = Tennant.create(:name => "Joe", :age => 20, :gender => "male")
t2 = Tennant.create(:name => "Bill", :age => 30, :gender => "male")
t3 = Tennant.create(:name => "Sally", :age => 40, :gender => "female")
t4 = Tennant.create(:name => "Mary", :age => 50, :gender => "female")
t5 = Tennant.create(:name => "Bob", :age => 60, :gender => "male")
t6 = Tennant.create(:name => "Larry", :age => 70, :gender => "male")

p1 = Pet.create(:name => "Thomas", :age => 3, :species => "dog")
p2 = Pet.create(:name => "Fido", :age => 3, :species => "dog")
p3 = Pet.create(:name => "Meow", :age => 3, :species => "cat")
p4 = Pet.create(:name => "Jim", :age => 3, :species => "rat")
p5 = Pet.create(:name => "Ellie", :age => 3, :species => "cat")

a1.tennants = [t1]
a2.tennants = [t2]
a3.tennants = [t3]
a4.tennants = [t4]
a5.tennants = [t5, t6]

t1.pets = [p1, p2, p3]
t2.pets = [p4]
t3.pets = [p5]