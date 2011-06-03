class CompanyInfosController < ApplicationController
  def index
    @company_info = CompanyInfo.find(:first)
  end

end