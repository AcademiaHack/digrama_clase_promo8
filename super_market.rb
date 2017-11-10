class SuperMarket
  def initialize(halls)
    @halls = halls
    @clients = []
  end

  def take_cart(client)
    
  end
  
  def enter(client)
    if client.identity % 2 == 0
      @clients << client
    end
  end
end