class Node
  attr_accessor :data, :nxt, :prv

  def initialize(value)
    @data = value
  end

  def to_s
    "#{prv.try(:data) || "no one"} < -- #{data} --> #{nxt.try(:data) || "no one"}"
  end
end