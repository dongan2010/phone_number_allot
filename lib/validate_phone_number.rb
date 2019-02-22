class ValidatePhoneNumber

  MIN_NUMBER = 1111111111
  MAX_NUMBER = 9999999999

  def call(number:)
    number.to_i.between?(MIN_NUMBER, MAX_NUMBER) &&
    !PhoneNumber.find_by(number: number)
  end

end
