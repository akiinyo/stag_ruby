# encoding utf-8
$LOAD_PATH << File.dirname(__FILE__)

require 'logic_device'

class Or < LogicDevice
  def initialize(input_count)
    super(input_count, 1)
  end

  def compute_output(index)
    @input.each do |v|
      return 1 if v == 1
    end
    0
  end
end
