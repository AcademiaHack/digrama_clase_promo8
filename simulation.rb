require_relative './factory_super_market'

super_market = FactorySuperMarket.go!
client = Client.new('Romer', 18020036)
client.enter(super_market)
client.take_cart
client.search_product('Efectivo')
client.checkout
client.exit
