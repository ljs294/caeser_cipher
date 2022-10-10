def caesar_cipher(string, shift)
  ords = string.split('').map { |letter| letter.ord }

  ords.each_with_index do |value, idx|
    if value.between?(65, 90)
      ords[idx] += shift
      ords[idx] -= 26 while ords[idx] > 90
    elsif value.between?(97, 122)
      ords[idx] += shift
      ords[idx] -= 26 while ords[idx] > 122
    end
  end

  string = ords.map { |ord| ord.chr }.join('')
end

puts caesar_cipher('What a string!', 5)
