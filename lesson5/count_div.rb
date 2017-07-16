def solution(a, b, k)
  b / k - a / k + (a % k == 0 ? 1 : 0)
end
