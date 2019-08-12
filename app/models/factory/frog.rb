class Frog
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
    puts("#{@name} doesn't sleep. Crying all night.")
  end
end
