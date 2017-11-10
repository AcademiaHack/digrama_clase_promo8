class Client
  def initialize(name, identity)
    @name = name
    @identity = identity
    @super_market = nil
  end

  def take_cart
    super_market.take_cart(client)
  end

  def enter(super_market)
    if super_market.enter(self)
      @super_market = super_market
    end
  end
end