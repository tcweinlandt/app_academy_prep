def translate(in_str)
    split_str = in_str.split
    i = 0
    while i < split_str.length do
        split_str[i] = transword(split_str[i])
        i += 1
    end
    split_str.join(' ')
end

def transword(in_str)
    j = 0
    while j < in_str.length do
        if ['a','e','i','o','u','y'].include?(in_str[0])
            return in_str + 'ay'
        elsif instr[0,2] == 'qu'
            in_str = in_str + in_str.slice!(0,2)
            j += 2
        else
            in_str = in_str + in_str.slice!(0)
            j += 1
        end
    end
end