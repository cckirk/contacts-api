class ContactsController < ApplicationController
  def show_the_contact
    render json: {
      id: contact.id,
      first_name: contact.first_name
      last_name: contact.last_name
      email: contact.email
      phone_number: contact.phone_number
    }
  end
  def every_contact
    render json: {Contact.all}
  end
  
  def show_latitude
    render json: {message: "hello"}
  end
  
  def show_longitude

    render json: {message: "hello"}
  end

  def create_contact
    contact = Contact.new(
      latitude: params[:input_latitude] || contact.latitude
      longitude: params[:input_longitude] || contact.longitude
    )
    contact.save
    render json: contact.as_json
  end
end
