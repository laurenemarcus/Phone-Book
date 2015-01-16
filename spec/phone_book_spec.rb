require("rspec")
require("phone_book")

describe(Contact) do

  describe("#name")do
    it("returns the name of the contact") do
      test_contact = Contact.new({ :name => "Melody", :phone_number => "555-444-1234" })
      expect(test_contact.name()).to(eq("Melody"))
    end
  end

  describe("#phone_number")do
    it("returns the phone number of the contact") do
      test_contact = Contact.new({ :name => "Melody", :phone_number => "555-444-1234" })
      expect(test_contact.phone_number()).to(eq("555-444-1234"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a contact to the array of saved contacts") do
      test_contact = Contact.new({ :name => "Melody", :phone_number => "555-444-1234" })
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end
end
