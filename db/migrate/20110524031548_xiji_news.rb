class XijiNews < ActiveRecord::Migration
  def self.up
    create_table "xiji_newes", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string      :title,                :limit =>100, :null=>false,:default=>""
      t.text        :body, :null=>false,:default=>""
      t.integer        :view_count, :null=>false,:default=>0
      t.timestamps
    end
  end

  def self.down
    drop_table "xiji_newes"
  end
end
