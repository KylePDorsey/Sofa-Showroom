class Sofa < ApplicationRecord

	belongs_to :customer

	
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	
	scope :style_family, -> (style_family) { where style_family: style_family }
  	scope :configuration, -> (configuration) { where configuration: configuration }
	scope :fabric_type, -> (fabric_type) { where fabric_type: fabric_type }
  	scope :fabric_style, -> (fabric_style) { where fabric_style: fabric_style }
	scope :leg_style, -> (leg_style) { where leg_style: leg_style }
  	scope :customer_id, -> (customer_id) { where customer_id: customer_id }
end
