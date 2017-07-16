def solution(n)
  n.to_s(2).reverse.to_i.to_s.split('1').map { |e| e.length }.max || 0
end
