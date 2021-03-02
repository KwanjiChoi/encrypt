date = Time.now.strftime("%Y%m%d%H%M%S")

begin
  file = open(ARGV[0])
rescue
  p 'Specify encrypt file'
  exit
end

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

encrypted_file_name = "#{date}_encrypted_#{File.basename(file)}"

open(encrypted_file_name, 'w'){|f|
  f.puts result
}

