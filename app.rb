require('sinatra')
require('sinatra/reloader')
also_reload("/lib/**/*.rb")
require("sinatra/activerecord")
require("./lib/employee")
require('pg')

get("/") do
  @employees = Employee.all()
  erb(:index)
end

post("/employee") do
  @name = params.fetch("name")
  Employee.create({:name => @name})
  @employees = Employee.all()
  erb(:index)
end

get("/employee/:id") do


end
