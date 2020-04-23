class PhoneNumber
  def self.clean(number)
    nanp = /
      \A
      1?
      ([2-9]{1}[0-9]{2})
      ([2-9]{1}[0-9]{2})
      ([0-9]{4})
      \z
    /x

    numbers = number.gsub(/\D/, '').match(nanp)
    numbers&.captures&.join
  end
end
