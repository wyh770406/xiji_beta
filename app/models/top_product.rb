class TopProduct < ActiveRecord::Base
  validates_uniqueness_of :name,:message => " - 该名称已存在"
  has_many :product_details,:dependent=>:destroy


end