# encoding: utf-8
$: << File.dirname(__FILE__)

class PrimitiveLogicDevice < LogicDevice
  def initialize(name, input_count, output_count)
    super(name, input_count, output_count)
    @input_terminals.each do |t|
      t.connect do |state|
        compute_output
      end
    end
  end

  private

  def compute_output
  end
end
