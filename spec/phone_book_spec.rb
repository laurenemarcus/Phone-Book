require("rspec")
require("phone_book")

describe(Contact) do

  describe("#name")do
    it("returns the name of the contact") do
      test_contact = Contact.new({ :name => "Melody", :phone_number => "555-444-1234" })
      expect(test_contact.name()).to(eq("Melody"))
    end
  end

  describe("#name")do
    it("returns the phone number of the contact") do
      test_contact = Contact.new({ :name => "Melody", :phone_number => "555-444-1234" })
      expect(test_contact.phone_number()).to(eq("555-444-1234"))
    end
  end
end
