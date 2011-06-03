class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table "users", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      #   t.string   :login,                     :limit => 40
      t.string   :name,                      :limit => 100, :default => '', :null => false
      t.string   :email,                     :limit => 100
      t.string   :crypted_password,          :limit => 40
      t.string   :salt,                      :limit => 40
      t.datetime :created_at
      t.datetime :updated_at
      t.string   :remember_token,            :limit => 40
      t.datetime :remember_token_expires_at

      t.string   :activation_code,           :limit => 40
      t.datetime :activated_at

      t.string   :state,                     :null => :no, :default => 'passive'
      t.datetime :deleted_at
      t.timestamps
    end
    add_index :users, :name
    add_index :users, :email, :unique => true
  end

  def self.down
    drop_table "users"
  end
end
