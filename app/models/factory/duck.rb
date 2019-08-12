class Duck
  def initialize(name)
    @name = name
  end

  def eat
    puts("#{@name} is eating")
  end

  def speak
    puts("#{@name} is crying")
  end

  def sleep
    puts("#{@name} is sleeping")
  end
end
