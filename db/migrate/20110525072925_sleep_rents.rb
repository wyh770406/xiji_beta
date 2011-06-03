class SleepRents < ActiveRecord::Migration
  def self.up
    create_table "sleep_rents", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string      :title,                :limit =>100, :null=>false,:default=>""
      t.text        :body, :null=>false,:default=>""
      t.timestamps
    end
  end

  def self.down
    drop_table "sleep_rents"
  end
end
