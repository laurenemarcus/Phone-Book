class Contact
  @@contacts = []

  attr_reader(:name, :phone_number)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @phone_number = attributes.fetch(:phone_number)
    @id = @@contacts.length().+(1)
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end
end
