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
require 'yaml'

module ReadData

  def ReadData.read_YAML(dataname)

    parse = begin
      YAML.load(File.open(dataname))
    rescue ArgumentError => ex
      puts "Could not parse YAML: #{ex.message}"
    end

  end

  def ReadData.write_YAML(dataname, content)
    File.open(dataname, "w") { |f| f.write(content.to_yaml) }
  end

  def test_YAML
    test_data = {"name" => "marian", "age" => 21}
    File.open("test.yaml", "w") { |i| i.write(test_data.to_yaml) }
  end
end