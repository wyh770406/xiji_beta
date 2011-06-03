class FrequentAsksController < ApplicationController
  def index
    @frequent_asks = FrequentAsk.find(:all)
  end
end