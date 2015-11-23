class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.references :user, index: true
      t.references :exercise, index: true
      t.datetime :datetime_viewed

      t.timestamps null: false
    end
  end
end
