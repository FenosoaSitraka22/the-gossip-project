class AddIndexTag < ActiveRecord::Migration[5.2]
  def change
  	add_reference :tags, :gossip, foreign_key:true
  end
end
