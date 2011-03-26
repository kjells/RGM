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
require 'BasicMake/read_data'

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

ReadData.write_YAML("test.yaml", test)
x = ReadData.read_YAML("test.yaml")
puts x