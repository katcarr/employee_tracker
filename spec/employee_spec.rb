require('spec_helper')

describe(Employee) do
  it("will return the division the employee belongs to") do
    test_division = Division.create({:name => "sales"})
    test_employee = Employee.create({:name => "Sue", :division_id => test_division.id()})
    expect(test_employee.division()).to(eq(test_division))
  end

end
