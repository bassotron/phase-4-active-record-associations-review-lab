class CreateTaxis < ActiveRecord::Migration[6.1]
  def change
    create_table :taxis do |t|
      t.references :rides, index: { unique: true }, foreign_key: true
      
      t.timestamps
    end
  end
end
