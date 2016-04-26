class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :category_id, index: true
      t.string :summary
      t.string :details
      t.string :user
      t.string :location

      t.timestamps null: false
    end
  end
end
