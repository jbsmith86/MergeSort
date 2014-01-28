class MergeSort

  def merge(left, right)
    aux = Array.new

    until (left.empty? || right.empty?)
      break if (left.first.nil? || right.first.nil?)
      if left.first <= right.first
        aux << left.shift
      else
        aux << right.shift
      end
    end
    return (aux + left + right)
  end

  def sort(array)
    if array.size <= 1
      return array
    end
    slice = array.slice!((array.size / 2).round, array.size)
    return merge(sort(array), sort(slice))
  end
end
