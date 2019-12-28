def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  counter = 0
  while counter < collection.length 
 if collection[counter][:item] == name
  return collection[counter]
end
  counter +=1
end
end

def consolidate_cart(cart)
  fresh_cart = []
  counter = 0
while counter > cart.length
fresh_cart_item = find_item_by_name_in_collection(cart[counter][:item], fresh_cart)
if fresh_cart_item != nil
  fresh_cart_item[:count] + 1
else 
  fresh_cart_item = {
    :item => cart[counter][:item],
    :price => cart[counter][:price],
    :clearance => cart[counter][:clearance]
    counter => 1
  }
  fresh_cart << fresh_cart_item 
  
counter += 1
end
  fresh_cart
end

def apply_coupons(cart, coupons)
  counter = 0
while counter < coupons.length  
  item_in_cart = find_item_by_name_in_collection(coupons[counter][:item], cart)
  coup_name = "#{coupons[counter][:item]} W/COUPON"
  cart_item_with_coup = find_item_by_name_in_collection(coup_name, name)
  if item_in_cart && item_in_cart[:count] >= coupons[counter][:num]
    if cart_item_with_coup
      cart_item_with_coup[:count] += coupons[counter][:num]
      item_in_cart[:count] -= coupons[counter][:num]
    else 
      cart_item_with_coup = {
        :item => coup_name,
        :price => coupons[counter][:cost] / coupons[counter][:num],
        :count => coupons[counter][:num],
        :clearance => item_in_cart[:clearance]
      }
      cart << cart_item_with_coup
      item_in_cart -= coupons[counter][:num]
    end
  end
  counter += 1
  end
  cart
end
  

def apply_clearance(cart)
 counter = 0 
 while counter < cart.length
  if cart[counter][:clearance]
    
end
 counter += 1
 end
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
