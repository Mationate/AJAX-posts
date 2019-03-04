class CreateComplains < ActiveRecord::Migration[5.2]
  def change
    create_table :complains do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
