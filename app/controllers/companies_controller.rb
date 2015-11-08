class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end
  def create
    @company = Company.new(company_params)

    if @company.save
      redirect_to root_path, notice: "Company was successfully created."
    else
      render action: "new"
    end
  end
  	private

	  def company_params
	    params.require(:company).permit(:email, :name, :password, :password_confirmation)
	  end
end