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

class CPU
  # CPU共通のコード
end

class BasicCPU < CPU
  # あまり高速ではないCPUに関するたくさんのコード・・・
end

class TurboCPU < CPU
  # 超高層のCPUに関するコード・・・
end

class Motherboard
  attr_accesor :cpu
  attr_accesor :memory_size
  def initialize(cpu=BasicCPU.new, memory_size=1000)
    @cpu = cpu
    @memory_size = memory_size
  end
end

class Drive
  attr_reader :type
  attr_reader :size
  attr_reader :writable

  def initialize(type, size, writable)
    @type = type
    @size = size
    @writable = writable
  end
end

class DesktopComputer < Computer
  # デスクトップコンピュータの詳細に関するたくさんのコード
end

class LaptopComputer < Computer
  def initialize(motherboard = Motherboard.new, drivers = [])
    super(:lcd, motherboard, drives)
  end

  # ラップトップの詳細に関するたくさんのコード
end
