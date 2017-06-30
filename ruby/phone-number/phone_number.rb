class PhoneNumber

  def self.clean(text)
    # remove non-digit characters
    text.gsub!(/\D/, '')

    # (NXX)-NXX-XXXX
    return nil unless text =~ /^1?[2-9]\d{2}[2-9]\d{6}$/

    text[0] = '' if text.length == 11

    text
  end
end