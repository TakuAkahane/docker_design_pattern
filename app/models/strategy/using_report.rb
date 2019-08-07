HTML_FORMATTER = lambda do |context|
  puts('<html>')
  puts('  <head>')
  puts("    <title>#{context.title}</title>")
  puts('  </head>')
  puts('  <body>')
  text.each do |line|
    puts("  <p>#{line}</p>")
  end
  puts('  </body>')
  puts('</html>')
end

report = Report.new &HTML_FORMATTER
report.output_report

report = Report.new do |context|
  puts("**** #{context.title} ****")
  text.each do |line|
    puts(line)
  end
end
