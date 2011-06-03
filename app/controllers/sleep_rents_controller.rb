class SleepRentsController < ApplicationController
  def index
    @sleep_rent = SleepRent.find(:first)
  end
end