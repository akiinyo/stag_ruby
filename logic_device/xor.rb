# encoding utf-8
$LOAD_PATH << File.dirname(__FILE__)

require 'logic_device'

class Xor < LogicDevice
  def initialize(input_count)
    super(input_count, 1)
  end

  def compute_output(index)
    sum = 0
    @input.each do |v|
      if v == 1
        sum += 1
      end
    end

    sum % 2
  end
end

