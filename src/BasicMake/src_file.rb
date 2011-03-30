#RGM, the RubyGoMake
#Copyright (C) 2011  Marian Sievers, avancet
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.
class SrcFile
  #Klassenvariablen
  @@src_dir = "src"
  @@bin_dir = "bin"
  @@tmp_dir = "tmp"
  @@trenner = "-" * 20

  #Compiler = gccgo OR 8g&8l
  @@compiler = "go"
  @@GCCGO = "gccgo"
  @@GO_COMPILE = "8g"
  @@GO_LINK = "8l"

  def initialize(filename)
    @filename = filename
    @src_name = @filename + ".go"
    @link_name = @filename + ".8l"
    @output_name = @filename + ".o"
  end

  def compile
    if @@compiler == "gccgo"
      puts "Not yet implemented!"
    else
      befehl = "8g -I #{@@tmp_dir} -o #{@@tmp_dir}/#{@link_name} #{@@src_dir}/#{@src_name}"
    end

    puts befehl
    system(befehl)
    puts @@trenner
  end

  def link
    if @@compiler == "gccgo"
      puts "Not yet implemented!"
    else
      befehl = "8l -o #{@@bin_dir}/#{@output_name} #{@@tmp_dir}/#{@link_name}"
    end
    puts befehl
    system(befehl)
    puts @@trenner
  end

  def self.set_compiler(name)
    @@compiler = name
  end

  def list_vars
    puts @filename
    puts @src_name
    puts @link_name
    puts @output_name
    puts @@trenner
  end
end
