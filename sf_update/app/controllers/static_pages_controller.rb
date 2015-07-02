class StaticPagesController < ApplicationController
	def home
		@sf_margin_report = SfMarginReport.last
	end

	def display_users
		@sf_margin_report = SfMarginReport.all
	end

	def show
		id = params[:id]
		@sf_margin_report = SfMarginReport.find(id)
	end

	def create
		@sf_margin_report = SfMarginReport.new
	end
end
