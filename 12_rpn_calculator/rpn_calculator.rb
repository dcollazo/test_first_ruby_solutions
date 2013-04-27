class RPNCalculator
  attr_accessor :contents, :value, :step
  
  def initialize
    @contents = []
    @step = 0
    @value = 0
  end
  
  def push(number)
    @contents << number
    @step += 1 if step != 0
  end
  
  def plus
    raise "calculator is empty" if @contents.empty?
    position = @contents.size - 1 - step
    if @step == 0
      @value += (@contents[position] + @contents[position - 1])
      @step += 1
    else
      @value += @contents[position - 1]
      @step += 1
    end
  end
  
  def minus
    raise "calculator is empty" if @contents.empty?
    position = @contents.size - 1 - step
    if @step == 0
      @value -= (@contents[position] - @contents[position - 1])
      @step += 1
    else
      @value -= @contents[position - 1]
      @step += 1
    end
  end
  
  def divide
    raise "calculator is empty" if @contents.empty?
    position = @contents.size - 1 - step
    if @step == 0
      @value = (@contents[position - 1].to_f / @contents[position].to_f)
      @step += 1
    else
      @value /= @contents[position - 1].to_f
      @step += 1
    end
  end
    
  def times
    raise "calculator is empty" if @contents.empty?
    position = @contents.size - 1 - step
    if @step == 0
      @value = (@contents[position].to_f * @contents[position - 1].to_f)
      @step += 1
    else
      @value *= @contents[position - 1].to_f
      @step += 1
    end
  end
  
  def tokens(string)
    returned_array = []
    string.split.each do |char|
      if char =~ /\d/ 
        returned_array << char.to_i
      elsif char =~ /[+-\/*]/
        returned_array << char.to_sym
      end
    end
    returned_array
  end
  
  def evaluate(string)
    eval string
  end
    
end
