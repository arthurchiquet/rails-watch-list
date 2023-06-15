class AddBackgroundUrlToList < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :background_url, :string
  end
end
