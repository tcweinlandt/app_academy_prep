class RPNCalculator
  # TODO: your code goes here!
  def initialize
    @stack = []
  end

  def value
    @stack[-1]
  end

  def push(num)
    @stack << num
  end

  def pop
    @stack.pop
  end

  def plus
    check_empty_stack
    a = @stack.pop.to_f
    b = @stack.pop
    @stack.push(a + b)
  end

  def minus
    check_empty_stack
    a = @stack.pop.to_f
    b = @stack.pop
    @stack.push(b - a)
  end

  def times
    check_empty_stack
    a = @stack.pop.to_f
    b = @stack.pop
    @stack.push(a * b)
  end

  def divide
    check_empty_stack
    a = @stack.pop.to_f
    b = @stack.pop
    @stack.push(b / a)
  end

  def tokens(string_in)
    token_array = string_in.split(' ')
    token_array.map! do |character|
      if character.to_i == 0
        character.to_sym
      else
        character.to_i
      end
    end
  end

  def evaluate(string_in)
    token_array = tokens(string_in)
    token_array.each do |tkn|
      case tkn
      when :+ ; plus
      when :- ; minus
      when :* ; times
      when :/ ; divide
      else    ; push(tkn)
      end
    end
    self.value
  end

  def check_empty_stack
    if @stack.length == 0
      raise 'calculator is empty'
    end
  end
end
