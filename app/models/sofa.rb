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



  	def self.sofa_families
  		families_array = []
  		Sofa.all.each {|sofa| families_array << sofa.style_family.capitalize}
  		families_array.uniq
  	end

  	def self.sofa_configuration
  		configuration_array = []
  		Sofa.all.each {|sofa| configuration_array << sofa.configuration.capitalize}
  		configuration_array.uniq
  	end

  	def self.sofa_fabric_type
  		fabric_type = []
  		Sofa.all.each {|sofa| fabric_type << sofa.fabric_type.capitalize}
  		fabric_type.uniq
  	end

    def self.sofa_fabric_style
      fabric_style = []
      Sofa.all.each {|sofa| fabric_style << sofa.fabric_style.capitalize}
      fabric_style.uniq
    end

    def self.sofa_leg_style
      leg_style = []
      Sofa.all.each {|sofa| leg_style << sofa.leg_style.capitalize}
      leg_style.uniq
    end
end
