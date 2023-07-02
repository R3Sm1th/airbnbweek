class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @featured = Property.order(rating: :desc).first
    @recent = Property.order(created_at: :desc).last
  end
end
