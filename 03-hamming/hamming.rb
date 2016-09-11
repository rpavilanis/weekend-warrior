class Hamming
  def self.compute(strings1, strings2)
    hamming_distance = 0
    if strings1.length != strings2.length
      raise ArgumentError
    end
    strings1.chars.each_with_index do |string1, i|
      if string1 == strings2.chars[i]
        hamming_distance += 0
      else
        hamming_distance += 1
      end
    end
    return hamming_distance
  end
end
