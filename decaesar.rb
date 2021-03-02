date = Time.now.strftime("%Y%m%d%H%M%S")
file = open(ARGV[0])

puts "復号キーを入力してください(数字)"
num = STDIN.gets.to_i