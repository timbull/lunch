class LotteryController < ApplicationController
  # GET /lottery
  # GET /lottery.json
  require "tasks/draw"

  def index
    @new_draw = Draw.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_draw }
    end
  end

  def show
  end

  def new

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end
end