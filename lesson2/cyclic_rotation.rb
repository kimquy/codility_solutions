def solution(arr, k)
  result = []
  l = arr.size
  arr.each_with_index do |e, i|
    j = (k+i) % l
    result[j] = e
  end
  result
end
