require 'rspec'
require 'triangles'

describe '#Triangle' do

  it("should return the not a triangle") do
    inputs = Triangle.new(1, 3, 30)
    expect(inputs.triangle_checker).to(eq("not a triangle"))
  end
  it("should return equilateral") do
    inputs = Triangle.new(3, 3, 3)
    expect(inputs.triangle_checker).to(eq("equalateral"))
  end
  it("should return isoscles") do
    inputs = Triangle.new(1, 3, 3)
    expect(inputs.triangle_checker).to(eq("isosceles"))
  end
  it("should return scalene") do
    inputs = Triangle.new(4, 3, 5)
    expect(inputs.triangle_checker).to(eq('scalene'))
  end
end