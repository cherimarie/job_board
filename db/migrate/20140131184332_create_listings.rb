class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
        t.string :title
        t.text :description 
        t.string :headquarters
        t.text :app_instructions
      t.timestamps
    end
  end
end
