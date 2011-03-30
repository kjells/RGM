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
require 'src_file'
class Task
  def initialize(type, param)
    @type = type
    @param = param
  end

  # init SrcFile or whatever
  def init_task()
    if @type == "build"
      @file = SrcFile.new(@param)
    end
  end

  # Compile, link, whatever
  def do_task()
    if @type == "build"
      @file.compile()
      @file.link()
    end
  end


end

#Just for testing
#SrcFile.set_arch("6")
#SrcFile.set_compiler("go")
#task = Task.new("build", "test")
#task.init_task()
#task.do_task()