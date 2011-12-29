# encoding: utf-8
$LOAD_PATH << File.dirname(__FILE__)

require 'terminal'

t1 = Terminal.new
t2 = Terminal.new
t3 = Terminal.new

t1.connect_input_terminal(t2)
t1.connect_input_terminal(t3)

t1.state = 0
puts "t2 = #{t2.state}"
puts "t3 = #{t3.state}"

t1.state = 1
puts "t2 = #{t2.state}"
puts "t3 = #{t3.state}"

