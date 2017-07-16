def solution(x, y, d)
  s = (y - x) / d
  gap = y - (x + d * s)
  s = s + 1 if gap > 0
  s
end
