class HomeController < ApplicationController

  def index
    carousel_images = *(1..30)
    @picked_images = carousel_images.sample(10)
    puts params[:action]
  end

  def discusion

  end

  def photo

  end

  def history

  end

  def sponsores

  end

  def contact

  end

end