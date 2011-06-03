class FrequentAsks < ActiveRecord::Migration
  def self.up
    create_table "frequent_asks", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string      :question,                :limit =>254, :null=>false,:default=>""
      t.text        :answer, :null=>false,:default=>""
      t.timestamps
    end
  end

  def self.down
    drop_table "frequent_asks"
  end
end
