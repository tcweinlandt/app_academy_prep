def reverser(&prc)
  string_in = prc.call
  string_out = ''
  split_string = string_in.split(' ')
  split_string.each {|str| string_out.concat(str.reverse + ' ')}
  string_out.slice!(-1)
  string_out
end

def adder(flag = 1, &prc)
  prc.call + flag
end

def repeater(flag = 1, &prc)
  flag.times {prc.call}
end
