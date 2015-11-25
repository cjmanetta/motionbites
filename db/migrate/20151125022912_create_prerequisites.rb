class CreatePrerequisites < ActiveRecord::Migration
  def change
    create_table :prerequisites do |t|
      t.references :user, index: true
      t.references :prereq, index: true

      t.timestamps null: false
    end
  end
end
