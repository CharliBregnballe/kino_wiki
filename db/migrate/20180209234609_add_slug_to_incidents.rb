class AddSlugToIncidents < ActiveRecord::Migration[5.1]
  change_table :incidents do |t|
    t.string :slug, after: :id
  end 
end
