# encoding: utf-8

class And
  def initialize
    @input = []
  end

  def set_input(index, value)
    @input[index] = value
  end

  def get_output
    @input.each do |v|
      return 0 if v == 0
    end
    1
  end
end
