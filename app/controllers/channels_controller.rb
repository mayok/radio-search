class ChannelsController < ApplicationController
  def search
  end

  def result
    @search = params[:search]
    @title        = Channel.where('title like ?', "%#{params[:search]}%")
    @personality  = Channel.where('personality like ?', "%#{params[:search]}%")
    @guest        = Channel.where('guest like ?', "%#{params[:search]}%")
  end
end
