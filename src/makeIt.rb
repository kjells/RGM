load "BasicMake.rb"
class TaskManager
  
  def initialize(filename)
    @make_file = filename
    @tasks = Array.new
  end
  
  def add_task(type, param)
    x = SrcFile.new(param)
    @tasks.push x
  end
  
  def do_tasks()
    @tasks.each |srcFile| do {
      srcFile.compile()
      srcFile.link()
    }
  end
  
  def test
    file = SrcFile.new("test")
    file.compile()
  end
end