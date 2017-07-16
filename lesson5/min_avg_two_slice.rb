def solution(a)
  minimum = (a[0] + a[1]) / 2.0
  minimum_position = 0

  a.each_cons(2).each_with_index do |pair, position|
    average = pair.inject(:+) / 2.0
    if minimum > average
      minimum = average
      minimum_position = position
    end
  end

  a.each_cons(3).each_with_index do |triple, position|
    average = triple.inject(:+) / 3.0

    if minimum == average && minimum_position > position || minimum > average
      minimum = average
      minimum_position = position
    end
  end

  minimum_position
end
