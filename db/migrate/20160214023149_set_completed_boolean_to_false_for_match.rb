class SetCompletedBooleanToFalseForMatch < ActiveRecord::Migration
  def change
  	change_column :matches, :completed, :boolean, :default => true
  end
end
