class GetAvailablePhoneNumber

  def call
    get_available_number
  end

  private

  def get_available_number
    number = rand(1111111111..9999999999)

    if PhoneNumber.find_by(number: number)
      get_available_number
    else
      number
    end
  end

end
