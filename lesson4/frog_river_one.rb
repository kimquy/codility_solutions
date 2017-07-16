def solution(x, a)
  storage = {}
  a.each_with_index do |e, i|
    storage[e] = true
    return result = i if storage.size == x
  end
  -1
end
