class SfOutputReport < ActiveRecord::Base
	belongs_to :sf_record
	validates :id,  presence: true, uniqueness: true
end