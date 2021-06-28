class ContactsController < ApplicationController
#  def show_the_contact
   # render json: {
    #  id: contact.id,
     # first_name: contact.first_name
      #last_name: contact.last_name
      #email: contact.email
      #phone_number: contact.phone_number
    #}
  #end
  #def every_contact
  #  render json: {Contact.all}
 # end
  
  def create
    contact = Contact.new(
      first_name: params[:input_first_name] || contact.first_name
      last_name: params[:input_last_name] || contact.last_name
      email: params[:input_email] || contact.email
      phone_number: params[:input_phone_number] || contact.phone_number
      latitude: params[:input_latitude] || contact.latitude
      longitude: params[:input_longitude] || contact.longitude
    )
    contact.save
    render json: contact.as_json
  end
end
