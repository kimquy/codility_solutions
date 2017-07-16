def solution(s)
  stack = []
  n = s.length

  0.upto(n-1).each do |i|
    e = s[i]
    if e == '{' or e == '[' or e == '('
      stack << e
    end

    if e == '}' or e == ']' or e == ')'
      return 0 if stack.empty?
      temp = stack.pop
      return 0 if e == '}' and temp != '{'
      return 0 if e == ']' and temp != '['
      return 0 if e == ')' and temp != '('
    end
  end

  stack.empty? ? 1 : 0
end
