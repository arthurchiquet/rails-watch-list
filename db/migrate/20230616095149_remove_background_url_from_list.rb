class RemoveBackgroundUrlFromList < ActiveRecord::Migration[7.0]
  def change
    remove_column :lists, :background_url, :string
  end
end
