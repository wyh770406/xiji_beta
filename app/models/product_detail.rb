class ProductDetail < ActiveRecord::Base
  has_attached_file :productimg, :styles => { :large=>'188x188>',:medium => "138x138>", :thumb => "120x120>" },
    :default_url => "/images/default_product.jpg"

 # has_attached_file :videoimg, :styles => {  :thumb => "190x104>" },
 #   :default_url => "/images/default_video.jpg"

  belongs_to :top_product
end