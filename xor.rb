# ビット列に変換

puts '平文を入力してください'

text_ary = gets.chomp.split('')

p text_ary.map(&:ord)