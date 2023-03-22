class AddVoteToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :vote, :integer, :default => 0
  end
end
