require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  new_list = Hash.new(0)
  cart.each {|grocery|
    coupons.each {|coupon_list|
      new_list = Hash.new(0)
      if grocery[:item] == coupon_list[:item]
      if grocery[:item] == coupon_list[:item] && grocery[:count] >= coupon_list[:num]
        grocery[:count] -= coupon_list[:num]
        new_list[:item] = grocery[:item] + " W/COUPON"
        new_list[:price] = coupon_list[:cost]/coupon_list[:num]
        new_list[:clearance] = grocery[:clearance]
        new_list[:count] = coupon_list[:num]
        cart << new_list
        break
        # binding.pry
      end
    end
      }
  # binding.pry
}
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each {|item|
    if item[:clearance] == true
      item[:price] = (0.8 * item[:price]).round(2)
      # binding.pry
    end
  }
  cart
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
