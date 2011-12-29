# encoding: utf-8
$LOAD_PATH << File.dirname(__FILE__)

require 'logic_device'

class Not < LogicDevice
  def initialize
    super(1, 1)
  end

 def compute_output
    if @input_terminals[0].state == 1
      @output_terminals[0].state = 0
    else
      @output_terminals[0].state = 1
    end
  end
end
