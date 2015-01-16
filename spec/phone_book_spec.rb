require("rspec")
require("phone_book")
require("phone_number")

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe("#name")do
    it("returns the name of the contact") do
      test_contact = Contact.new("Melody")
      expect(test_contact.name()).to(eq("Melody"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a contact to the array of saved contacts") do
      test_contact = Contact.new("Melody")
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved contacts") do
      test_contact = Contact.new("Melody")
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the unique ID number for the contact") do
      test_contact = Contact.new("Melody")
      expect(test_contact.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("returns a contact by its id number") do
      test_contact = Contact.new("Melody")
      test_contact.save()
      test_contact2 = Contact.new("Drew")
      test_contact2.save()
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end

  describe("#add_phone_number") do
    it("adds a new phone number to a contact") do
      test_contact = Contact.new("Melody")
      test_number = Phone.new({ :type => "home", :number => "555-444-1234" })
      test_contact.add_phone_number(test_number)
      expect(test_contact.numbers()).to(eq([test_number]))
    end
  end
end
