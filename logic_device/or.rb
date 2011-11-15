# encoding utf-8

class Or
  def initialize
    @input = []
  end

  def set_input(index, value)
    @input[index] = value
  end

  def get_output
    @input.each do |v|
      return 1 if v == 1
    end
    0
  end
end
