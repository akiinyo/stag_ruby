#encoding: utf-8
$LOAD_PATH << File.dirname(__FILE__)

require "terminal"

t1 = Terminal.new
t2 = Terminal.new
t3 = Terminal.new

t1.connect_input_terminal(t2)
t1.connect_input_terminal(t3)


t2.connect do |state|
  puts "t2の状態が、#{state}になりました。"
end

t3.connect do |state|
  puts "t3の状態が、#{state}になりました。"
end

t1.state = 0
t1.state = 1
