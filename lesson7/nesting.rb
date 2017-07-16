def solution(s)
  stack = []
  n = s.length

  0.upto(n-1).each do |i|
    e = s[i]
    stack << e if e == '('

    if e == ')'
      return 0 if stack.empty?
      stack.pop
    end
  end

  stack.empty? ? 1 : 0
end
