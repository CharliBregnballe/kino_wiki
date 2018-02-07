class CreateIncidents < ActiveRecord::Migration[5.1]
  def change
    create_table :incidents do |t|
      t.string :title
      t.text :description
      t.text :solution
      t.integer :status

      t.timestamps
    end
  end
end
