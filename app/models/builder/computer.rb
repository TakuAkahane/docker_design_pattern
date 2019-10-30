class Computer
  raise "Not enough memory" if @computer.motherboard.memory_size < 250
  raise "Too many drives" if @computer.drives.size > 4
  hard_disk = @computer.drives.find {|drive| drive.type == :hard_disk }
  raise "No hard disk." unless hard_disk
  @computer

  def method_missing(name, *args)
    words = name.to_s.split("_")
    return super(name, *args) unless words.shift == 'add'
    words.each do |word|
      next if word == 'and'
      add_cd if word == 'cd'
      add_dvd if word == 'dvd'
      add_hard_disk(100_000) if word == 'harddisk'
      turbo if word == 'turbo'
    end
  end
end

#...
if !hard_disk
  raise "No room to add hard disk." if @computer.drives.size >= 4
  add_hard_disk(100_000)
end
#...
