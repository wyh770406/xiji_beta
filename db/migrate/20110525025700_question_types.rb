class QuestionTypes < ActiveRecord::Migration
  def self.up
    create_table "question_types", :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8', :force => true do |t|
      t.string      :name,                :limit =>60, :null=>false,:default=>""
      t.timestamps
    end
  end

  def self.down
    drop_table "question_types"
  end
end
