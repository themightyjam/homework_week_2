require_relative("../db/sql_runner")
require_relative("tickets")
require_relative("films")

class Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options['id'].to_i if options ['id']
    @name = options['name']
    @funds = options['funds']
  end

  def save()
    sql = "INSERT INTO customers
    (
      name,
      funds
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@name, @funds]
    customer = SqlRunner.run( sql, values ).first
    @id = customer['id'].to_i
  end

  def film()
      sql = "SELECT films.*
      FROM films
      INNER JOIN tickets
      ON tickets.customer_id = customer.id
      WHERE film_id = $1"
      values = [@id]
      user_data = SqlRunner.run(sql, values)
      return Film.map_items(film_data)
    end

    def update()
    sql = "UPDATE customers SET (name, funds) = ($1, $2) WHERE id = $1"
    values = [@name, @funds, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM customers where id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

    def self.all()
      sql = "SELECT * FROM customers"
      customer_data = SqlRunner.run(sql)
      return Customer.map_items(film_data)
    end

    def self.delete_all()
     sql = "DELETE FROM customers"
     SqlRunner.run(sql)
    end

    def self.map_items(customer_data)
      result = customer_data.map { |customer| Customer.new( customer ) }
      return result
    end

end
