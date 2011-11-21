# encoding: utf-8
$LOAD_PATH << File.dirname(__FILE__)

require 'logic_device'

class Not < LogicDevice
  def initialize
    super(1, 1)
  end

 def compute_output(index)
    if @input[0] == 1
      0
    else
      1
    end
  end
end
