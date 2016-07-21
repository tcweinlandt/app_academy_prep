def factors(num)
  outarr = [1,num]
  i = 2
  while i <= num**0.5 do
    outarr = check_factor(outarr,i)
    i += 1
  end
  outarr.uniq.sort
end

def check_factor(outarr,i)
  num = outarr[1]
  if num % i == 0
    outarr.concat([i])
    outarr.concat([num/i])
  end
  outarr
end


class Array
  def bubble_sort!
    # Without a proc
    sorted = false
    until sorted
      sorted = true

      each_index do |i|
        next if i + 1 == self.length
        j = i + 1
        if self[i] > self[j]
          sorted = false
          self[i], self[j] = self[j], self[i]
        end
      end
    end

    return self
  end

  def bubble_sort!(&prc)
    # With a proc
    prc ||= Proc.new { |x, y| x <=> y }

    sorted = false
    until sorted
      sorted = true

      each_index do |i|
        next if i + 1 == self.length
        j = i + 1
        if prc.call(self[i], self[j]) == 1
          sorted = false
          self[i], self[j] = self[j], self[i]
        end
      end
    end

    return self
  end

  def bubble_sort(&prc)
    self.dup.bubble_sort!(&prc)
  end
end

def substrings(string)
  subset = []
  i = 0
  j = 0
  while i < string.length
    if j > string.length
      i += 1
      j = i
    else
      substr = string[i..j]
      subset << substr
      j += 1
    end
  end
  return subset.uniq
end

def subwords(word, dictionary)
  substrings(word).select {|substr| dictionary.include?(substr)}
end

def doubler(array)
  array.map { |i| i * 2 }
end

class Array
  def my_each(&prc)
    i = 0
    while i < self.length
      prc.call(self[i])
      i += 1
    end
  return self
  end

  def my_map(&prc)
    output = []
    self.my_each{|i| output << prc.call(i)}
    return output
  end

  def my_select(&prc)
    output = []
    self.my_each{|i| output << i if prc.call(i)}
    return output
  end

  def my_inject(&blk)
    val = self.first
    self.drop(1).my_each { |el| val = blk.call(val, el) }
    val
  end
end

def concatenate(strings)
  strings.inject("") {|accumulator, string| accumulator + string}
end