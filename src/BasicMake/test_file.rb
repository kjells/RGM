# RGM, the RubyGoMake
# Copyright (C) 2011  Marian Sievers, avancet
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#require 'BasicMake/read_data'
require "src_file"

puts "Hello World"

test = Array.new()

t1 = {"compile" => "foo", "link" => "foo"}
t2 = {"compile" => "bar", "link" => "bar", "move" => {"from" => "src", "to" => "test"}}
t3 = {"test" => "bar"}

puts "Start push hashes in Array"
test.push(t1)
test.push(t2)
test.push(t3)

puts "Finish push hashes in array, start writing in YAML-file"

#ReadData.write_YAML("test.yaml", test)
#x = ReadData.read_YAML("test.yaml")

#puts x
#puts "----------------"
#puts x[0]
#puts x[1]
#puts x[2]
#puts x.length
#puts "----------------"
#y = x[0]
#puts y.length
##y.flatten
#puts y
#puts y.values_at(0,1)

file = SrcFile.new("test")
SrcFile.set_compiler("go")
#ReadData.write_YAML("compile.yaml", file)
file.list_vars()
file.compile()
file.link()