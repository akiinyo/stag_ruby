# encoding: utf-8
$LOAD_PATH << File.dirname(__FILE__)

require 'not'

nt = Not.new
nt.set_input(0)
puts("not 0 = #{nt.get_output}")
nt.set_input(1)
puts("not 1 = #{nt.get_output}")
