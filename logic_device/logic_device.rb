# encoding: utf-8
$LOAD_PATH << File.dirname(__FILE__)

require "~/ruby_projects/stag_ruby/terminal/terminal"

class LogicDevice
  def initialize(name, input_count, output_count)
    @name = name
    @input_count = input_count
    @output_count = output_count
    @input_terminals = Array.new(input_count) {|i| Terminal.new("#{name}.in(#{i})")}
    @output_terminals = Array.new(output_count) {|i| Terminal.new("#{name}.out(#{i})")}
  end

  attr_reader :name

  def get_input_terminal(index = 0)
    check_index(index, @input_count)
    @input_terminals[index]
  end

  def get_output_terminal(index = 0)
    check_index(index, @output_count)
    @output_terminals[index]
  end

  def check_index(index, index_count)
    if (index < 0 || index_count <= index)
      raise(ArgumentError, "インデックス（=#{index}）が不適切です。0から#{index_count-1}までの値を指定してください")
    end
  end
end
