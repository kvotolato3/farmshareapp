class ShareOptionsController < ApplicationController
  def index
    @share_options = ShareOption.all
  end
end
