class Triangle
  attr_accessor(:side1, :side2, :side3)
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def triangle_checker
    a=@side1
    b=@side2
    c=@side3

    if a + b <= c || c + a <= b || c + b <= a
      output = "not a triangle"
    elsif a === b && c === a
      output ='equalateral'
    elsif a === b || b === c || c === a
      output = 'isosceles'
    else
      output = 'scalene'
    end
    output
  end
  
end