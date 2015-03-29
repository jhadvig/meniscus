class HomeController < ApplicationController

  def index
    carousel_images = *(1..30)
    @picked_images = carousel_images.sample(10)
    puts params[:action]

    @locale=params[:locale]
  end

  def rules

  end

  def photo

  end

  def history

  end

  def sponsores

  end

  def contact

  end

  def locales
  end

  def set_locale
    I18n.locale = params[:locale]
    redirect_to home_index_path
  end

end