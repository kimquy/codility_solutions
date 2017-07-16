def solution(a)
  while a.size != 1
    checker = a[0]
    if a.one? {|e| e == checker}
      return checker
    else
      a  = a.reject{ |e| e == checker }
    end
  end
  a[0]
end

def solution(a)
  a.reduce(:^)
end
