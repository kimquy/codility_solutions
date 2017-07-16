def solution(a)
  n = a.size
  sum = (n * (n+1)) / 2
  (sum - a.reduce(:+)) == 0 ? 1 : 0
end


def solution(a)
  seen = {}

  a.each do |item|
    return 0 if item > a.size
    seen[item] = true
  end

  seen.size == a.size ? 1 : 0
end
