def solution(a)
  max_slice = -2_147_483_649
  slice = max_slice

  a.each do |e|
    slice = [e, e + slice].max
    max_slice = [max_slice, slice].max
  end

  max_slice
end
