require('sinatra')
require('sinatra/reloader')
also_reload("/lib/**/*.rb")
require("sinatra/activerecord")
require("./lib/employee")
require("./lib/division")
require('pg')
require("pry")

get("/") do
  @divisions = Division.all()
  @employees = Employee.all()
  @division_employees = []
  erb(:index)
end

post("/division") do
  @name = params.fetch("name")
  Division.create({:name => @name})
  @divisions = Division.all()
  @employees = Employee.all()
  @division_employees = []
  erb(:index)
end

post("/list_division_employees") do
  division_id = params.fetch("division_id").to_i()
  division = Division.find(division_id)
  @division_employees = division.employees()
  @divisions = Division.all()
  @employees = Employee.all()
  erb(:index)
end


post("/division/added_employee") do
  name = params.fetch("name")
  division_id = params.fetch("division_id").to_i()
  @found_division = Division.find(division_id)
  @found_division.employees().new({:name => name})
  @found_division.save()
  @employees = Employee.all()
  @divisions = Division.all()
  @division_employees = []
  erb(:index)
end
