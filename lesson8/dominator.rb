def solution(a)
  dominators = {}
  n = a.size / 2

  a.each_with_index do |e, i|
    if dominators[e]
      dominators[e][1] += 1
    else
      dominators[e] = [i, 1]
    end
  end

  dominators.values.each do |v|
    return v[0] if v[1] > n
  end

  -1
end
