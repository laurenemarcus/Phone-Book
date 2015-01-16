require("rspec")
require("phone_number")

describe(Phone) do
  before() do
    Phone.clear()
  end

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

  describe(".all") do
    it("is empty at first") do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a phone number to the array of saved phone numbers") do
      test_number = Phone.new({ :type => "home", :number => "555-444-1234" })
      test_number.save()
      expect(Phone.all()).to(eq([test_number]))
    end
  end

  describe(".clear") do
    it("clears out the array of save phone numbers") do
      Phone.new({ :type => "home", :number => "555-444-1234" })
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of the phone number") do
      test_number = Phone.new({ :type => "home", :number => "555-444-1234" })
      expect(test_number.id()).to(eq(1))
    end
  end
end
