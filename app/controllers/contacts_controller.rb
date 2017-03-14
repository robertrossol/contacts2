class ContactsController < ApplicationController
  def index
    @contacts=Contact.all
    render "index.html.erb"
  end

  def show
    contact_id=params[:id]
    @contact=Contact.find_by(id: contact_id)
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    contact = Contact.new(name: params[:name], phone: params[:phone], email: params[:email], birthday: params[:birthday])
    contact.save
    contact_id=params[:id]
    flash[:success] = "Contact Successfully Created"
    redirect_to "/contacts/#{contact.id}"
    #render "create.html.erb"
  end

  def destroy
    contact_id=params[:id]
    @contact=Contact.find_by(id: contact_id)
    @contact.destroy
    flash[:danger] = "Contact Deleted"
    redirect_to "/contacts"
    #render "destroy.html.erb"
  end
end
