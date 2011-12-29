# encoding utf-8
$LOAD_PATH << File.dirname(__FILE__)

require 'logic_device'

class Xor < LogicDevice
  def initialize(input_count)
    super(input_count, 1)
  end

  def compute_output
    sum = 0
    @input_terminals.each do |v|
      if v.state == 1
        sum += 1
      end
    end

    @output_terminals[0].state = sum % 2
  end
end

