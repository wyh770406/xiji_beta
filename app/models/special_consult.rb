class SpecialConsult < ActiveRecord::Base
  validates_presence_of :name,:message => " - 姓名不能为空"
  validates_presence_of :mobile,:message => " - 手机不能为空"
  validates_presence_of :question,:message => " - 留言不能为空"

  validates_length_of :name, :maximum => 60, :message=>" - 长度不能超过60！"
  validates_length_of :tel, :maximum => 60, :message=>" - 长度不能超过60！"
  validates_length_of :mobile, :maximum => 60, :message=>" - 长度不能超过60！"
  validates_length_of :email, :maximum => 60, :message=>" - 长度不能超过60！"

  validates_format_of :email, :with=> /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,:message => " - 邮件地址格式错误"

  belongs_to :question_type
  

end