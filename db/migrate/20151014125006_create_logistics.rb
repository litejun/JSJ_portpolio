class CreateLogistics < ActiveRecord::Migration
  def change
    create_table :logistics do |t|
      
        t.string :title
        t.string :date
        t.string :score
        t.string :review
        

      t.timestamps null: false
    end
  end
end
