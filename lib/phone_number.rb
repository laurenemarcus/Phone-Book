class Phone
  @@phones = []
  attr_reader(:type, :number)

  define_method(:initialize) do |attributes|
    @type = attributes.fetch(:type)
    @number = attributes.fetch(:number)
    @id = @@phones.length().+(1)
  end

  define_singleton_method(:all) do
    @@phones
  end

  define_method(:save) do
    @@phones.push(self)
  end

  define_singleton_method(:clear) do
    @@phones = []
  end

  define_method(:id) do
    @id
  end
end
