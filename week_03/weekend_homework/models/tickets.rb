require_relative("../db/sql_runner")
require_relative("films")
require_relative("customers")

class Ticket

  attr_reader :id
  attr_accessor :customer_id, :film_id

  def initialize(options)
    @id = options['id'].to_i if options ['id']
    @customer_id = options['customer_id'].to_i
    @film_id = options['film_id'].to_i
  end

  def save()
    sql = "INSERT INTO Customers
    (
      customer_id,
      film_id
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@customer_id, @film_id]
    ticket = SqlRunner.run( sql, values ).first
    @id = ticket['id'].to_i
  end

  def customers()
      sql = "SELECT *
      FROM customers
      WHERE id = $1"
      values = [@customer_id]
      customer_data = SqlRunner.run(sql, values)
      return Customer.map_items(customer_data)
    end

    def film()
        sql = "SELECT *
        FROM films
        WHERE id = $1"
        values = [@film_id]
        film_data = SqlRunner.run(sql, values)
        return Film.map_items(film_data)
      end

      def update()
      sql = "UPDATE tickets SET (customer_id, film_id) = ($1, $2,) WHERE id = $1"
      values = [@customer_id, @film_id, @id]
      SqlRunner.run(sql, values)
    end

    def delete()
      sql = "DELETE FROM tickets where id = $1"
      values = [@id]
      SqlRunner.run(sql, values)
    end


    def self.all()
      sql = "SELECT * FROM tickets"
      location_data = SqlRunner.run(sql)
      return Ticket.map_items(ticket_data)
    end

    def self.delete_all()
     sql = "DELETE FROM tickets"
     SqlRunner.run(sql)
    end

    def self.map_items(ticket_data)
      result = ticket_data.map { |ticket| Ticket.new( ticket ) }
      return result
    end


end
