require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |grocery_hash|
    if grocery_hash[:item]==name
      puts "hello"
    end
    binding.pry

  end

end

def consolidate_cart(cart)

end
