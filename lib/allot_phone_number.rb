class AllotPhoneNumber

  def call(requested_phone_number: nil)
    new_phone_number = if requested_phone_number && ::ValidatePhoneNumber.new.call(number: requested_phone_number)
      PhoneNumber.create(number: requested_phone_number)
    end

    if !new_phone_number
      free_number = GetAvailablePhoneNumber.new.call
      new_phone_number = PhoneNumber.create(number: free_number)
    end

    new_phone_number
  end

end
