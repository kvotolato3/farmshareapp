class SignupController < ApplicationController
  def index
    @SeasonalShareOptions = ShareOption.where(is_season: true)
    @ExtraShareOptions = ShareOption.where(is_season: false)
  end
end
