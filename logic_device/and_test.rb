# encoding: utf-8
$LOAD_PATH << File.dirname(__FILE__)

require 'and'

a = And.new(2)
a.set_input(0,0)
a.set_input(1,0)
puts("0 and 0 = #{a.get_output}")

a.set_input(0,0)
a.set_input(1,1)
puts("0 and 1 = #{a.get_output}")

a.set_input(0,1)
a.set_input(1,0)
puts("1 and 0 = #{a.get_output}")

a.set_input(0,1)
a.set_input(1,1)
puts("1 and 1 = #{a.get_output}")


