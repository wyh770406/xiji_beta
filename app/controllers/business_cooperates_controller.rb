class BusinessCooperatesController < ApplicationController
  def index

      @business_cooperate = BusinessCooperate.find(:first)

  end
end