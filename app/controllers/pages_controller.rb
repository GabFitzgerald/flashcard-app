class PagesController < ApplicationController
  def home
    @cards = Card.all
  end

  def about
  end

  def how_to_use
  end

  def educators
  end

  def feedback
  end
end
