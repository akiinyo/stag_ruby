#encoding: utf-8
$LOAD_PATH << File.dirname(__FILE__) + '/logic_device'
$LOAD_PATH << File.dirname(__FILE__) + '/terminal'

require 'and'
require 'xor'
require 'terminal'

a = And.new(2)
x = Xor.new(2)

# 半加算器の入力端子
inp = [Terminal.new, Terminal.new]

# 半加算器の入力0を、And回路とXor回路の入力0に接続
inp[0].connect_input_terminal(a.get_input_terminal(0))
inp[0].connect_input_terminal(x.get_input_terminal(0))

# 半加算器の入力1を、And回路とXor回路の入力1に接続
inp[1].connect_input_terminal(a.get_input_terminal(1))
inp[1].connect_input_terminal(x.get_input_terminal(1))

# 半加算器の出力端子
out = [Terminal.new, Terminal.new]

# And回路の出力0を、半加算器の出力1に接続
a.get_output_terminal.connect_input_terminal(out[1])

# Xor回路の出力0を、半加算器の出力0に接続
x.get_output_terminal.connect_input_terminal(out[0])

(0..1).each do |i|
  (0..1).each do |j|
    inp[0].state = i
    inp[1].state = j
    puts "#{i} + #{j} = #{out[1].state}, #{out[0].state}"
  end
end
