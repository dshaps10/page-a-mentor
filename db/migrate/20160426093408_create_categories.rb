class CreateCategories < ActiveRecord::Migration
  def change
    t.string :title
    t.string :description
  end
end
