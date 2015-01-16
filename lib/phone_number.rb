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

  define_singleton_method(:find) do |id|
    found_number = nil
    @@phones.each do |phone|
      if phone.id().eql?(id)
        found_number = phone
      end
    end
    found_number
  end
end
