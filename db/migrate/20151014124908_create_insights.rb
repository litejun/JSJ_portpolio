class CreateInsights < ActiveRecord::Migration
  def change
    create_table :insights do |t|
      
        t.string :title
        t.string :date
        t.string :score
        t.string :review
        

      t.timestamps null: false
    end
  end
end
