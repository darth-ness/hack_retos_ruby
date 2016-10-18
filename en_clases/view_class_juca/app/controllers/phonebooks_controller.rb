class PhonebooksController < ApplicationController
  def index
    @contacts = Phonebook.all
  end

  def show

  end

  def new
    @contact = Phonebook.new
    
  end

  def create
    @contact = Phonebook.new(contact_params)

    if @contact.save
      redirect_to :root
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def delete
  end

  def destroy
  end
end

private
def contact_params
  params.require(:phonebook).permit(:name, :lastname, :tel_number, :email, :birthday, :gender)
end
