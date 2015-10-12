class ChangeToCities < ActiveRecord::Migration
  def change
    drop_table :categories
    create_table :cities do |t|
      t.column :name, :string
      t.column :country_id, :integer

      t.timestamp
    end
    remove_column :countries, :category_id
  end


end
