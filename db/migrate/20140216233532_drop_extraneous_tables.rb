class DropExtraneousTables < ActiveRecord::Migration
  def change
    drop_table :users
    drop_table :trigrams
    drop_table :sessions
  end
end
