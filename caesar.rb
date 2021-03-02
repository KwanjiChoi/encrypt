file = open(ARGV[0])
puts "暗号キーを入力してください(数字)"
num = STDIN.gets.to_i
content = file.read

def encryption(str, key)
  code = []
  str.chars.each do |char|
    encrypted_char = char.ord - key
    code << encrypted_char.chr
  end
  code.join('')
end

result = encryption(content, num)
puts "暗号化後: #{result}"

