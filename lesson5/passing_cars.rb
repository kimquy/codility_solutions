def solution(a)
  exceed = 1_000_000_000
  east = []
  last_location = a.size - 1

  a.each_with_index do |e, i|
    east << i if e == 0
  end

  passing = 0
  s_east = east.size
  east.each_with_index do |location, i|
    i = i + 1
    passing = passing + (last_location - location - (s_east - i))
  end

  return -1 if passing > exceed
  passing
end
