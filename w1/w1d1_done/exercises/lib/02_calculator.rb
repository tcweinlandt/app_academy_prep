def add(num1,num2)
  added = num1 + num2
end

def subtract(num1, num2)
  subtracted = num1 - num2
end

def sum(input)
  i = 0
  summed = 0
  while i < input.count do
      summed = summed + input[i]
      i +=1
  end
  summed
end

def multiply(input)
  i = 0
  multiplied = 1
  while i < input.count do
      multiplied = multiplied * input[i]
      i +=1
  end
  multiplied
end

def power(input)
  powered = input[0]**input[1]
end

def factorial(num)
  factorialed = 1
  while num > 0 do
      factorialed = factorialed * num
      num -=1
  end
  factorialed
end
