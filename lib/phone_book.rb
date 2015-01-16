class Contact
  attr_reader(:name, :phone_number)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @phone_number = attributes.fetch(:phone_number)
  end
end
