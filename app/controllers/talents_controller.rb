class TalentsController < ApplicationController
  def index
    @talent = Talent.find(:first)
  end
end