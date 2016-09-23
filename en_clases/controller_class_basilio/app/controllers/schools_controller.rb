class SchoolsController < ApplicationController
  def create
    @school = School.new(params)
  end

  private

  # def school_params
  #   params.require(:school).permit(:name,
  #         user_parameters: {
  #
  #           })
  # end

  # {
  #   id: 34342,
  #   token: 34234
  #   school: {
  #
  #   }
  # }


end
