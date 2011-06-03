class CreateProductDetails < ActiveRecord::Migration
  def self.up
    create_table "product_details", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string   :name,                      :limit => 60
      t.integer :product_price
      t.text   :product_desc
      t.integer  :top_product_id
      t.string  :productimg_file_name
      t.string  :productimg_content_type
      t.integer  :productimg_file_size
      t.datetime :productimg_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table "product_details"
  end
end
