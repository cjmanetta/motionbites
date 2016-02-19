class CreatePrerequisiteships < ActiveRecord::Migration
  def change
    create_table :prerequisiteships do |t|
      t.references :exercise, index: true
      t.references :prerequisite, index: true

      t.timestamps null: false
    end
  end
end
