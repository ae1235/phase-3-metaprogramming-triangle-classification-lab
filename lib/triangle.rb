class Triangle
  # write code here
  attr_accessor :sides, :kind

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort

    if(@sides[0] <= 0 || @sides[0] + @sides[1] <= @sides[2])
      begin
        raise TriangleError
      end
    else
      case @sides.uniq.length
        when 1
          @kind = :equilateral
        when 2
          @kind = :isosceles
        when 3
          @kind = :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "The sizes entered are not valid."
    end
  end
end
