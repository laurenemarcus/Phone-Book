require("rspec")
require("phone_number")

describe(Phone) do

  describe("#type") do
    it("returns the type") do
      test_number = Phone.new({ :type => "home", :number => "555-444-1234" })
      expect(test_number.type()).to(eq("home"))
    end
  end

  describe("#number") do
    it("returns the phone number") do
      test_number = Phone.new({ :type => "home", :number => "555-444-1234" })
      expect(test_number.number()).to(eq("555-444-1234"))
    end
  end
end
