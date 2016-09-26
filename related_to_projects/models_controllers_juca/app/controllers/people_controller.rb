class PeopleController < ApplicationController

  def index
    render json: Person.all
  end

  def create
    @person = Person.new
    @person.email = params[:email]
    @person.password = params[:password]
    if @person.save
      render json: @person
    else
      render json: {"error" => @person.errors, "code" => "Status 400"}
    end
  end

  def show

  end

  def update

  end

  def destroy

  end
end
