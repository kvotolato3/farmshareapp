class AddSeasonToShareOptions < ActiveRecord::Migration
  def change
    add_column :share_options, :is_season, :boolean, default: false
  end
end
