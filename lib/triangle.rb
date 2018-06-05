class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    real_triangle
    if a==b && b==c
      :equilateral
    elsif a==b || b==c || a==c
      :isosceles
    elsif a!=b && b!=c && a!=c
      :scalene
    end
  end

  def real_triangle
    triangle = a + b > c && a + c > b && b + c > a && a > 0 && b > 0 && c > 0
  begin if !triangle
    raise TriangleError
  end
  rescue TriangleError => error
      puts error.message
    end
  end

  class TriangleError < StandardError
    def message
      "This isn't a triangle."
    end
  end

end
