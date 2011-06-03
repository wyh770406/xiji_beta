class CreateTopProducts < ActiveRecord::Migration
  def self.up
    create_table "top_products", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string   :name,                      :limit => 60
      t.text   :top_product_desc
   #   t.string  :avatar_file_name
   #   t.string  :avatar_content_type
   #   t.integer  :avatar_file_size
   #   t.datetime :avatar_updated_at
      t.timestamps
    end
    add_index :top_products, :name
  end

  def self.down
    drop_table "top_products"
  end
end
