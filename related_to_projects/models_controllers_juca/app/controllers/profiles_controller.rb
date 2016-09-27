class ProfilesController < ApplicationController
  def index
    puts params.inspect
    render json: Profile.all

  end

  def create
    @person = Person.find(params[:person_id])
    @prof = Profile.new(profile_params)
    @prof.person = @person

    if @prof.save
      render json: @prof
    else
      render json: {"errors": @prof.errors, "code": 500}
    end

  end

  def show
    
  end

  def update
  end

  def destroy
  end

  private

  def profile_params
    params.permit(:dni, :name, :lastname, :birthday, :gender, :car)
  end

end
