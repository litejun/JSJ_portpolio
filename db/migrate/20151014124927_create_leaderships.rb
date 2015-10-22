class CreateLeaderships < ActiveRecord::Migration
  def change
    create_table :leaderships do |t|

        t.integer :user_id      
        t.string :title
        t.string :date
        t.string :score
        t.string :review
        

      t.timestamps null: false
    end
  end
end
