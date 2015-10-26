require_relative '../../config/database'

class AddName < ActiveRecord::Migration
	def change
		add_column :urls, :name, :string, default: 0
	end
end