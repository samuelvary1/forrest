class Setcompletedbooleantofalse < ActiveRecord::Migration
  def change
  	change_column :matches, :completed, :boolean, :default => false
  end
end
