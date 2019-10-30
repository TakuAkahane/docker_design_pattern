builder = ComputerBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(100_000)

*------------------------------------------------------------------------------*
builder = LaptopBuilder.new
builder.add_hard_disk(100_000)
builder.turbo

computer1 = builder.computer
computer2 = builder.computer

*------------------------------------------------------------------------------*
require 'rubygems'
require 'mailfactory'

mail_builder = MailFactory.new
mail_builder.to = 'russ@russolsen.com'
mail_builder.from = 'russ@russolsen.com'
mail_builder.subject = 'The document'
mail_builder.text = 'Here is that document you wanted'
mail_builder.attach('book.doc')
