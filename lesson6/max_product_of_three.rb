def solution(a)
  a = a.sort
  
  [
    a[0] * a[1] * a[2],
    a[0] * a[1] * a[-1],
    a[0] * a[-1] * a[-2],
    a[-1] * a[-2] * a[-3],
  ].max
end
