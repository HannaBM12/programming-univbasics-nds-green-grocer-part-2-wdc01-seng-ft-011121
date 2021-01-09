require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each_with_object([]){|grocery, new_list|
    coupons.each {|coupon_list|
      if grocery[:item] == coupon_list[:item] && grocery[:count] >= coupon_list[:num]
        binding.pry
        if grocery[:count]>=coupon_list[:num]
         new_list[:item] = grocery[:item] + "W/COUPON"
         new_list[:price] = coupon_list[:cost]/coupon_list[:num]
         new_list[:clearnce] = grocery[:clearance]
         new_list[:count] = coupon_list[:num]
         cart  << new_list
      end
    end
    }

  }
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
