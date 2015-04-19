# encoding: utf-8

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

  def schedule

  end

  def teams_men
    @teams=[]
    team=[]

    File.open("data/teams_men_2015.data", "r") do |file|
      file.each_line do |line|
        if line == "-\n"
          @teams << team
          team.each do |p|
          end
          team = []
        else
          team << line.force_encoding("UTF-8").gsub('\n','')
        end
      end

    end
  end

  def teams_women
    @teams=[]
    team=[]

    File.open("data/teams_women_2015.data", "r") do |file|
      file.each_line do |line|
        
        if line == "-\n"
          @teams << team
          team.each do |p|
          end
          team = []
        else
          team << line.force_encoding("UTF-8").gsub('\n','')
        end
      end
    end
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