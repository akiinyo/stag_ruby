# encoding: utf-8
$LOAD_PATH << File.dirname(__FILE__)

require 'or'

o = Or.new
o.set_input(0,0)
o.set_input(1,0)
puts("0 or 0 = #{o.get_output}")

o.set_input(0,0)
o.set_input(1,1)
puts("0 or 1 = #{o.get_output}")

o.set_input(0,1)
o.set_input(1,0)
puts("1 or 0 = #{o.get_output}")

o.set_input(0,1)
o.set_input(1,1)
puts("1 or 1 = #{o.get_output}")

