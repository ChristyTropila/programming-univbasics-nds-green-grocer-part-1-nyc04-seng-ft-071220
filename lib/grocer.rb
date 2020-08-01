require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.find do |grocery_hash|
    grocery_hash.find do |attr, food|
    if food==name
      food
    end
    end
  end
end





def consolidate_cart(cart)
  new_cart=[]
  count=0
  cart.each do |grocery_hash|
    current_item=find_item_by_name_in_collection(grocery_hash[:item], new_cart)
    if current_item
      new_cart_index=0
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] === current_item[:item]
          new_cart_item[:count]+=1
        end
        new_cart_index+=1
      end
      else
        grocery_hash[:count]=1
        new_cart << grocery_hash
      end
      count +=1

  end
new_cart
end
