class SpecialConsults < ActiveRecord::Migration
  def self.up
    create_table "special_consults", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string      :name,                :limit =>60
      t.string      :email,                :limit =>60

      t.string      :mobile,                :limit =>60
      t.string      :tel,                :limit =>60
      t.integer     :question_type_id
      t.text        :question

      t.text        :answer
      t.boolean     :show_flag
      t.timestamps
    end
  end

  def self.down
    drop_table "special_consults"
  end
end
