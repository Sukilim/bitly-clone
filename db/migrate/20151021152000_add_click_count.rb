require_relative '../../config/database'

class AddClickCount < ActiveRecord::Migration
	def change
		add_column :urls, :click_count, :integer
		
	end
end