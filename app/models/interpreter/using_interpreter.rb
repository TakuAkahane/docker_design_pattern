expr_all = All.new
files = expr_all.evaluate('test_dir')

expr_mp3 = FileName.new('*.mp3')
mp3s = expr_mp3.evaluate('test_dir')

expr_not_writable = Not.new(Writable.new)
readonly_files = expr_not_writable.evaluate('test_dir')

small_expr = Not.new(Bigger.new(1024))
small_files = small_expr.evaluate('test_dir')

not_mp3_expr = Not.new(FileName.new('*.mp3'))
not_mp3 = not_mp3_expr.evaluate('test_dir')

big_or_mp3_expr = Or.new(Bigger.new(1024), FileName.new('*.mp3'))
big_or_mp3 = big_or_mp3_expr.evaluate('test_dir')

complex_expression = And.new(And.new.(Bigger.new(1024), FileName.new('*.mp3')), Not.new(Writable.new))
complex_expression.evaluate('test_dir')
complex_expression.evaluate('/tmp')
