# encoding: utf-8
$LOAD_PATH << File.dirname(__FILE__)

require 'xor'

xo = Xor.new
xo.set_input(0,0)
xo.set_input(1,0)
puts("0 xor 0 = #{xo.get_output}")

xo.set_input(0,0)
xo.set_input(1,1)
puts("0 xor 1 = #{xo.get_output}")

xo.set_input(0,1)
xo.set_input(1,0)
puts("1 xor 0 = #{xo.get_output}")

xo.set_input(0,1)
xo.set_input(1,1)
puts("1 xor 1 = #{xo.get_output}")

