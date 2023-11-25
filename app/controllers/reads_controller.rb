class ReadsController < ApplicationController

  def index 
    @reads = Read.all
  end

  def new
    @tweet = Tweet.new
  end
end
