def echo(instr)
  instr
end

def shout(instr)
  instr.upcase
end

def repeat(*input)
  if input.length == 1
    repeated_string = string_together(input[0], input[0])
  else
    repeated_string = input[0]
    while input[1] > 1 do
      repeated_string = string_together(repeated_string, input[0])
      input[1] -= 1
    end
  end
  repeated_string
end

def string_together(string1,string2)
  new_string = string1 + ' ' + string2
end

def start_of_word(instr,innum)
  instr[0,innum]
end

def first_word(instr)
  instr.split[0]
end

def titleize(instr)
  strarr = instr.split
  title_check(strarr)
end

def title_check(strarr)
  outstr = strarr[0].capitalize
  i = 1
  while i < strarr.length do
    if ['and','the','over'].include?(strarr[i])
      outstr = string_together(outstr,strarr[i])
      i += 1
    else
      outstr = string_together(outstr,strarr[i].capitalize)
      i+=1
    end
  end
  outstr
end
