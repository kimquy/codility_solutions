def solution(a, b)
  alives = []
  downstream_fishes = []
  b.each_with_index do |e, i|
    if e == 0
      if downstream_fishes.empty?
        alives << [e, i]
      else
        downstream_fishes = downstream_fishes.select { |f| a[f[1]] > a[i] }
        alives << [e, i] if downstream_fishes.empty?
      end
    elsif e == 1
      downstream_fishes << [e, i]
    end
  end

  alives.count + downstream_fishes.count
end
