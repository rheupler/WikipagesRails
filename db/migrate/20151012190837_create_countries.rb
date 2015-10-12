class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.column :name, :string
      t.column :image_url, :string
      t.column :category_id, :integer

      t.timestamps
    end

    create_table :categories do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
