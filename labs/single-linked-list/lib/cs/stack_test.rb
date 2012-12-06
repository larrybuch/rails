class StackTest
  def main(value)
    fibonacci(value)
  end

  def factorial(value)
    if value == 0
      1
    else
      value * factorial(value - 1)
    end
  end

  def fibonacci(value)
    if value < 3
      1
    else
      fibonacci(value - 2) + fibonacci(value - 1)
    end
  end
end