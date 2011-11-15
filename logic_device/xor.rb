# encoding utf-8

class Xor
  def initialize
    @input = []
  end

  def set_input(index, value)
    @input[index] = value
  end

  def get_output
    sum = 0
    @input.each do |v|
      if v == 1
        sum += 1
      end
    end

    sum % 2
  end
end

