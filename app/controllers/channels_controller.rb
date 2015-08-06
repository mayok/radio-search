class ChannelsController < ApplicationController
  def search
  end

  def result
    @title = Channel.where(title: params[:search])
  end
end
