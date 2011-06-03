class BasicKnowledgesController < ApplicationController
  def index
    @basic_knowledge = BasicKnowledge.find(:first)
  end

end