class SrcFile

  #Klassenvariablen
  @@src_dir = "src"
  @@bin_dir = "bin"
  @@tmp_dir = "tmp"
  @@trenner = "-" * 20

  def initialize(filename)
    @filename = filename
    @src_name = @filename + ".go"
    @link_name = @filename + ".8l"
    @output_name = @filename + ".o"
  end

  def compile
    befehl = "8g -I #{@@tmp_dir} -o #{@@tmp_dir}/#{@link_name} #{@@src_dir}/#{@src_name}"
    puts befehl
    system(befehl)
    puts @@trenner
  end

  def link
    befehl = "8l -o #{@@bin_dir}/#{@output_name} #{@@tmp_dir}/#{@link_name}"
    puts befehl
    system(befehl)
    puts @@trenner
  end

  def listVars
    puts @filename
    puts @src_name
    puts @link_name
    puts @output_name
    puts @@trenner
  end
end

class Task
  def initialize(type, param)
    @type = type
    @param = param
  end
  
  # init SrcFile or whatever
  def initTask()
  end
  
  # Compile, link, whatever
  def doTask()
  end
  
  
end

testfile = SrcFile.new("test")
testfile.listVars()
testfile.compile()
testfile.link()
