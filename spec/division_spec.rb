require("spec_helper")

describe(Division) do
  it("returns employees of the division") do
    division_test = Division.create({:name => "sales"})
    employee_test = Employee.create({:name =>"Nancy", :division_id => division_test.id()})
    expect(division_test.employees()).to(eq([employee_test]))
  end
end
