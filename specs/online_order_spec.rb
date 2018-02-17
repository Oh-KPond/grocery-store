require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'
require_relative '../lib/order'
require_relative '../lib/online_order'
require "csv"

require 'awesome_print'

Minitest::Reporters.use!

# Because an OnlineOrder is a kind of Order, and we've
# already tested a bunch of functionality on Order,
# we effectively get all that testing for free! Here we'll
# only test things that are different.

describe "OnlineOrder" do
  describe "#initialize" do
    it "Is a kind of Order" do
      # arrange
      id = 1337
      products = { "banana" => 1.99, "cracker" => 3.00 }
      # act
      # Instatiate your OnlineOrder here
      Grocery::Order.new(id, products)
      online_order = Grocery::OnlineOrder.new(id, {})

      # assert
      # Check that an OnlineOrder is in fact a kind of Order
      online_order.must_be_kind_of Grocery::Order
    end

    xit "Can access Customer object" do
      # TODO: Your test code here!
    end

    xit "Can access the online order status" do
      # TODO: Your test code here!
    end
  end

  describe "#total" do
    it "Adds a shipping fee" do
      # TODO: Your test code here!
    end

    it "Doesn't add a shipping fee if there are no products" do
      # TODO: Your test code here!
    end
  end

  describe "#add_product" do
    it "Does not permit action for processing, shipped or completed statuses" do
      # TODO: Your test code here!
    end

    it "Permits action for pending and paid satuses" do
      # TODO: Your test code here!
    end
  end

  describe "OnlineOrder.all" do
    it "Returns an array of all online orders" do
      # TODO: Your test code here!
    end

    it "Returns accurate information about the first online order" do
      # TODO: Your test code here!
    end

    it "Returns accurate information about the last online order" do
      # TODO: Your test code here!
    end
  end

  describe "OnlineOrder.find" do
    it "Will find an online order from the CSV" do
      # TODO: Your test code here!
    end

    it "Raises an error for an online order that doesn't exist" do
      # TODO: Your test code here!
    end
  end

  describe "OnlineOrder.find_by_customer" do
    it "Returns an array of online orders for a specific customer ID" do
      # TODO: Your test code here!
    end

    it "Raises an error if the customer does not exist" do
      # TODO: Your test code here!
    end

    it "Returns an empty array if the customer has no orders" do
      # TODO: Your test code here!
    end
  end
end
