def solution(a)
  h = {}
  a.each do |e|
    h[e] = true
  end
  h.size
end
