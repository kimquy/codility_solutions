def solution(a)
  a = a.sort
  smallest = 100_000_000
  a.each_with_index do |e, index|
    smallest = 1 if e > 0 and e != 1 and index == 0
    if e > 0 and e < smallest
      smallest = e + 1 if a[index + 1].nil? || (a[index + 1] - e) > 1
    end
  end
  smallest
end
