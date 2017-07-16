def solution(k, a)
  tied_ropes = []
  ongoing = 0

  a.each_with_index do |e, i|
    if e >= k
      tied_ropes << e
    else
      if ongoing >= k
        tied_ropes << ongoing
        ongoing = e
      else
        ongoing += e
      end
    end
  end

  if ongoing >= k
    tied_ropes << ongoing
    ongoing = 0
  end

  tied_ropes.size
end
