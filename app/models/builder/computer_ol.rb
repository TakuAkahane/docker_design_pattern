class Computer
  attr_accesor :display
  attr_accesor :motherboard
  attr_reader :drives

  def initialize(display = :crt, motherboard = Motherboard.new, drives = [])
    @motherboard = motherboard
    @drives = drives
    @display = display
  end
end

class DesktopComputer < Computer
  # デスクトップの詳細に関するたくさんのコード・・・
end

class LaptopComputer < Computer
  def initialize( motherboard=Motherboard.new, drives=[] )
    super(:lcd, motherboard, drives)
  end

  # ラップトップの詳細に関するたくさんのコード・・・
end

class ComputerBuilder
  attr_reader :computer

  def turbo(has_turbo_cpu=true)
    @computer.motherboard.cpu = TurboCPU.new
  end

  def memory_size=(size_in_mb)
    @computer.motherboard.memory_size = size_in_mb
  end
end
