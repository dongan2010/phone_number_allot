class Api::PhoneNumbersController < ApplicationController

  protect_from_forgery unless: -> { request.format.json? }

  def allot
    new_phone_number = ::AllotPhoneNumber.new.call(requested_phone_number: params[:phone_number])
    render json: { phone_number: new_phone_number.number }
  end

end
