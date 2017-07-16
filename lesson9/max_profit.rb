def solution(a)
  min = a[0]
  max = 0
  a.each do |e|
    max = [max, e - min].max
    min = [min, e].min
  end
  max
end
