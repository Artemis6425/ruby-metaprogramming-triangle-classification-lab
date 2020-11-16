class Triangle
  # write code here
  def initialize(s1,s2,s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    @sides = [s1, s2, s3].sort
  end
  def invalid
    (@sides.any?{|x| x<=0}) || (@sides[0]+@sides[1] <= @sides[2])
  end
  def kind
    if invalid
      begin
        raise TriangleError
      end
    elsif @sides.uniq.size == 1
      :equilateral
    elsif @sides.uniq.size == 2
      :isosceles
    elsif @sides.uniq.size == 3
      :scalene
    end
  end
  class TriangleError < StandardError
    def message
      puts ":/"
    end
  end
end
