class AddIndexLike < ActiveRecord::Migration[5.2]
  def change
  	add_reference :likes, :user, foreign_key: true
  	add_reference :likes, :gosssip,foreign_key: true
  	add_reference :likes, :comment, foreign_key: true
  end
end
