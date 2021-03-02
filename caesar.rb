puts "キーワードを入力してください（アルファベット小文字のみ）"
keyword = gets.chomp

puts "暗号キーを入力してください(数字)"
@key = gets.to_i

puts "暗号化前: #{keyword}"

code = []

keyword.chars.each do |char|
  num = char.ord - 97
  num2 = (num - @key) % 26
  num3 = num2 + 97
  code << num3.chr
end

puts "暗号化後: #{code.join("")}"