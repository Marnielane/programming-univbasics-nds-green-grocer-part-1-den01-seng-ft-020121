grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
]


def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  index = 0 
  collection.each do |items_array| 
     if items_array[:item] == name 
     return items_array 
     end
    index += 1 
  end
  nil
end


def consolidate_cart(cart)
  # Consult README for inputs and outputs
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  new_cart = []
  cart.each do |items_array| 
    items_array.each do |item, attribute_hash| 
      if new_cart[:item] == attribute_hash
        new_cart[item][:count] += 1 
      else new_cart[item][:count] = 1 
      end
    end 
    new_cart  
  end
end

  