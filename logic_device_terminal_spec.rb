# coding: utf-8
$: << File.dirname(__FILE__) + '/terminal'
$: << File.dirname(__FILE__) + '/logic_device'

require 'terminal'
require 'xor'
require 'and'

describe LogicDevice do
  RSpec::Matchers.define :compute do |*data, expect|
    match do |actual|
      logic = actual.new(data.size)
      data.each_with_index do |val, index|
        logic.get_input_terminal(index).state = val
      end
      (@result = logic.get_output_terminal.state) == expect[:to]
    end

    failure_message_for_should do
      RSpec::Expectations::Differ.new.diff_as_object(@result, expect[:to])
    end
  end

  describe Xor do
    subject { Xor }
    it { should compute 1, 0, to: 1 }
    it { should compute 0, 1, to: 1 }
    it { should compute 0, 0, to: 0 }
    it { should compute 1, 1, to: 0 }
  end

  describe And do
    subject { And }
    it { should compute 1, 1, 1, to: 1 }
    it { should compute 1, 1, 0, to: 0 }
  end
end
