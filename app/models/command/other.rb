class FileDeleteCommand
  def initialize(path)
    @path = path
  end

  def execute
    File.delete(@path)
  end

  fdc = FileDeleteCommand.new('foo.dat')
  fdc.execute
end

###############################################################################

class CreateBookTable < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.column :title, :string
      t.column :author, :string
    end
  end

  def self.down
    drop_table :books
  end
end
