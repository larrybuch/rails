class Que
  def initialize
    @data = []
  end

  def enqueue(value)
    @data[@data.count] = value
  end

  def dequeue
    @data.delete(@data[0])
  end

  def data
    @data
  end
end