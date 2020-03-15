require_relative( 'models/customers')
require_relative( 'models/films')
require_relative( 'models/tickets')

require( 'pry-byebug' )

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()

customer1 = Customer.new({ 'name' => 'Walter White', 'funds' => 50})
customer1.save()
customer2 = Customer.new({ 'name' => 'Tony Soprano', 'funds' => 60})
customer2.save()
customer3 = Customer.new({ 'name' => 'Marty Bird', 'funds' => 30})
customer3.save()

film1 = Film.new({ 'title' => 'Pulp Fiction', 'price' => 5})
film1.save()
film2 = Film.new({ 'title' => 'Once Upon a Time in Hollywood', 'price' => 10})
film2.save()
film3 = Film.new({ 'title' => 'Reservoir Dogs', 'price' => 8})

ticket1 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => film3.id})
ticket2 = Ticket.new({ 'customer_id' => customer2.id, 'film_id' => film2.id})
ticket3 = Ticket.new({ 'customer_id' => customer3.id, 'film_id' => film1.id})

binding.pry
nil
