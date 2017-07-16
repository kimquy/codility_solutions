def solution(a)
  s = a.size + 1
  (s * (s + 1) / 2) - a.reduce(:+).to_i
end
