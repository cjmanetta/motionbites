class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.references :current_exercise, index :true
      t.string :legacy_id
      t.string :legacy_prereqs
      t.text :description
      t.integer :exertion
      t.integer :technicality
      t.string :equipment
      t.integer :flexibility
      t.integer :balance
      t.integer :strength
      t.boolean :breathing
      t.string :muscle_1
      t.string :muscle_2
      t.string :muscle_3
      t.string :muscle_stretched
      t.string :origin

      t.timestamps null: false
    end
  end
end
