class SignupController < ApplicationController
  def index
    @SeasonalShareOptions = ShareOption.where(is_season: true)
  end
end
