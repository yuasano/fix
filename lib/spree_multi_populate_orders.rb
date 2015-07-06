Spree::Core::Engine.add_routes do
  post '/orders/multi_populate', :to => 'taxon_orders#populate', :as => :multi_populate_orders
end
