class StaticPagesController < ApplicationController
  before_filter :signed_in_user, only: [:home, :images, :overview, :new]

  def home
  end

  def help
  end

  def images
  end

  def overview
  end

  def new
  end

  private

    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

end
