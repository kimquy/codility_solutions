def solution(a)
  s = a.reduce(:+)
  part1 = 0
  smallest = 100_000_000
  a.each do |e|
    part1 += e
    part2 = s - part1

    temp = (part1 - part2).abs
    smallest = temp if temp < smallest
  end

  smallest
end


puts solution([3,1,2,4 ,3])
