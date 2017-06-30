class Atbash

  def self.encode(text)
    text.gsub(/\W/, '')
        .downcase
        .tr('a-z', [*'a'..'z'].reverse.join)
        .scan(/.{1,5}/)
        .join(' ')
  end

end