def solution(n, a)
  n1 = n + 1
  result = Array.new(n, 0)
  max = 0
  a.each_with_index do |e, i|
    if e <= n and result[e]
      result[e-1] += 1
      max = result[e-1] if result[e-1] > max
    elsif e == n1
      result = Array.new(n, max)
    end
  end
  result
end
