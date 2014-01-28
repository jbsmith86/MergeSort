class MergeSort

  def initialize
  end

  def merge(left, right)
    aux = Array.new

    until (left.empty? || right.empty?)
      puts "#{left} #{right}"
      if left.first.to_i <= right.first.to_i
        aux << left.shift
      else
        aux << right.shift
      end
    end
  end

  def sort(array)
    if array.size <= 1
      return array
    end

    slice = array.slice!((array.size / 2).round, array.size)
    #puts "#{slice} #{array}"
    return merge(sort(array), sort(slice))
  end
end
