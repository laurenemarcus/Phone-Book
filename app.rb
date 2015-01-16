require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/phone_book')
require('./lib/phone_number')

get('/') do
  @contacts = Contact.all()
  erb(:index)
end

post("/phone_number") do
  name = params.fetch('name')
  Contact.new(name).save()
  @contacts = Contact.all()
  erb(:index)
end

post("/contact") do
  type = params.fetch('type')
  number = params.fetch("number")
  @phone = Phone.new({ :type => type, :number => number })
  @phone.save()
  @contact = Contact.find(params.fetch("number_id").to_i())
  @contact.add_phone_number(@phone)
  erb(:phone_number)
end

get("/phone_number/:id") do
  @contact = Contact.find(params.fetch("id"))
  erb(:phone_number)
end
