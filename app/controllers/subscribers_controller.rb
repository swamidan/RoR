class SubscribersController < ApplicationController
  def index
    @subscriber=Subscriber.find(params[:subscriber_id])
    @subscribers=@library.subscribers

  end

  def create

  end

  def new

  end

  def show

  end

  def edit

  end

  def update

  end


  private

  def subscriber_params

  end
end

