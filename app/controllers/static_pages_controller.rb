class StaticPagesController < ApplicationController
  TEST = 'hey'
  def home
  end

  def help
    willyWonka = 'Charlie'
    @hesTheFamousChocolatier = willyWonka
  end
  
  def about
  end
end
