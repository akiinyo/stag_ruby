# encoding utf-8
$LOAD_PATH << File.dirname(__FILE__)

require 'logic_device'

class Or < LogicDevice
  def initialize(input_count)
    super(input_count, 1)
  end

  def compute_output
    @input_terminals.each do |v|
      if v.state == 1
        @output_terminals[0].state = 1
        return
      end
    end
    @output_terminals[0].state = 0
  end
end
