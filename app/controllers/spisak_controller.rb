class SpisakController < ApplicationController
  def ideja
    @ideas = Idea.all
    puts @ideas.to_json
  end
end
