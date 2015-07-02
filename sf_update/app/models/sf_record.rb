class SfRecord < ActiveRecord::Base
	validates :id,  presence: true, uniqueness: true
end