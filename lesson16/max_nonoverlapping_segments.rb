def solution(a, b)
  segments = []
  n = a.size - 1
  0.upto(n).each do |i|
    if segments.empty?
      segments << [a[i], b[i]]
    else
      last = segments.last
      if last[1] < a[i]
        segments << [a[i], b[i]]
      end
    end
  end

  segments.size
end
