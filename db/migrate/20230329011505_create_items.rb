class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :lives_at
      t.string :best_by

      t.timestamps
    end
  end
end
