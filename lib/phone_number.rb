class Phone

  attr_reader(:type, :number)

  define_method(:initialize) do |attributes|
    @type = attributes.fetch(:type)
    @number = attributes.fetch(:number)
  end
end
