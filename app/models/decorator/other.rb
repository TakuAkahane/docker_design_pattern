w = SimpleWriter.new('out')

class << w
  alias old_write_line write_line

  def write_line(line)
    old_write_line("#{TIme.now}: #{line}")
  end
end

###############################################################################

module TimeStampingWriter
  def write_line(line)
    super("#{Time.new}: #{line}")
  end
end

module NumberingWriter
  attr_reader :line_number

  def write_line(line)
    @line_number = 1 unless @line_number
    super("#{@line_number}: #{line}")
    @line_number += 1
  end
end
