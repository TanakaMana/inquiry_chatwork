class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.save
      render confirm_contacts_path
    else
      render contacts_path
    end
  end

  def complete
    @contact = Contact.new(contact_params)
    # ContactMailer.contact_thanks_mail(@contact).deliver_now
    render complete_contacts_path
  end

  def contact_params
      params.require(:contact).permit(
        :family_name,
        :email,
        :phone_number,
        :free_field
      )
  end
end
