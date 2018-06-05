class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a==b && b==c
      :equilateral
    elsif a==b || b==c || a==c
      :isosceles
    elsif a!=b && b!=c && a!=c
      :scalene
    end
  end

  def real_triangle

  elsif begin
    raise TriangleError
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
