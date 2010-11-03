class Gattaca
  def initialize(path)
    @path = path
  end
  def process_input_file()
    inputfile = File.open(@path, 'r')
    line = inputfile.readline
    @dnaSeqLength = Integer(line)
    @dnaSeq = ""
    line = inputfile.readline
    while !(line[0].chr.match(/\d/)) do
      @dnaSeq << line
      line = inputfile.readline
    end
  end
end

g = Gattaca.new("gattaca.txt")
g.process_input_file