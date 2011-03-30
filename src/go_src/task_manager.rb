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
#MERCHANTABILITY or FITNESS F#RGM, the RubyGoMake
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
#along with this program.  If not, see <http://www.gnu.org/licenses/>.OR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.
require 'task'
require 'src_file'
class TaskManager
  def initialize()
    @tasks = Array.new()
  end
  
  def init_compiler(arch, compiler)
    SrcFile.set_arch(arch)
    SrcFile.set_compiler(compiler)
  end
  
  def add_task(type, param)
    task = Task.new(type, param)
    @tasks.push(task)
  end
  
  def init_tasks
    @tasks.each { |e| e.init_task() }
  end
  
  def do_tasks
    @tasks.each { |e| e.do_task() }
  end
  
end

taskmanager = TaskManager.new()
taskmanager.init_compiler("6","go")
taskmanager.add_task("build","test")
taskmanager.add_task("build","foobar")
taskmanager.init_tasks()
taskmanager.do_tasks()
