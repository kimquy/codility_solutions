def solution(a)
  a.combination(3).each do |c|
    return 1 if (c[0] + c[1] > c[2]) && (c[1] + c[2] > c[0]) && (c[2] + c[0] > c[1])
  end
  0
end

def triangle(a)
  a.sort!
  a.each_cons(3) do |a, b, c|
    next if c <= 0
    return 1 if a + b > c
  end
  0
end
