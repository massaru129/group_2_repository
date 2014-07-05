class Blackboard < ActiveRecord::Base
    belongs_to :subject
    has_attached_file :material, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "default/material.png"
	validates_attachment_content_type :material, :content_type => /\Aimage\/.*\Z/
end
