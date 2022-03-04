class BoardsController < ApplicationController
  def index
  end

  def new
    @boards = Board.new
  end

  def create
    binding.pry
  end
end