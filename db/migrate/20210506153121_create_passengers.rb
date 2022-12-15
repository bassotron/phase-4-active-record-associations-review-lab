class CreatePassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
    t.references :rides,{ unique: true } foreign_key: true
    
    t.timestamps
    end
  
end
