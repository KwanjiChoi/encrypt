# ビット列に変換

puts '平文を入力してください'

text_ary = gets.chomp.split('')

def create_random_binary
end


p text_ary.map{ |t| t.ord.to_s(2) }.join