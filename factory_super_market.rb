require_relative './hall'

class FactorySuperMarket
  def self.go!
    products = create_products('')
    # ...
    halls = create_halls
    create_super_market(halls)
  end

  def self.create_products(mark)
    products = []
    products << Product.new("Harina Pan #{mark}", 23233232323)
    products << Product.new("Arroz #{mark}", 94873937)
    products << Product.new("Efectivo #{mark}", 9584093)
    products
  end


  def self.create_halls
    puts "Introduzca la cantidad de pasillos del super mercado"
    hall_count = gets.chomp.to_i

    halls = []
    hall_count.times do
      #TODO: AGREGAR SHELFS AQUI!
      halls << Hall.new()
    end
    halls
  end

  def self.create_super_market(halls)
    SuperMarket.new(halls)
  end
end