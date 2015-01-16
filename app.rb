require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/phone_book')

get('/') do
  @contacts = Contact.all()
  erb(:index)
end

post("/contact") do
  name = params.fetch('name')
  contact = Contact.new(name)
  contact.save()
  @contacts = Contact.all()
  erb(:index)
end

get("/contact/:id") do
  @contact = Contact.find(params.fetch("id"))
  erb(:contact)
end
