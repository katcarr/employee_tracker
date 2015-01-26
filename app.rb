require('sinatra')
require('sinatra/reloader')
also_reload("/lib/**/*.rb")
require("sinatra/activerecord")
require("./lib/employee")
require("./lib/division")
require('pg')

get("/") do
  @divisions = Division.all()
  erb(:index)
end

post("/division") do
  @name = params.fetch("name")
  Division.create({:name => @name})
  @divisions = Division.all()
  erb(:index)
end

get("/division/:id") do


end
