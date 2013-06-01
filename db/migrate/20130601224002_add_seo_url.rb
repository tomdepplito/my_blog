class AddSeoUrl < ActiveRecord::Migration
  def up
    add_column :blogs, :seo_url, :string
  end

  def down
  end
end
