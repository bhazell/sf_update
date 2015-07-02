class SfMarginReportsController < ApplicationController
	def create
		user_id = params[:sf_margin_report][:user_id]
		margin_report_url =  params[:sf_margin_report][:margin_report_url]
		@sf_margin_report = SfMarginReport.create(user_id: user_id, margin_report_url: margin_report_url)
		redirect_to display_users_path

	end

	def update
		puts @sf_margin_report
	end

	def edit
		# this is the form name 
		id = params[:sf_margin_report][:id]
		user_id = params[:sf_margin_report][:user_id]
		margin_report_url = params[:sf_margin_report][:margin_report_url]
		report = SfMarginReport.find(id)
		report.user_id = user_id
		report.margin_report_url = margin_report_url
		report.save
		redirect_to show_static_pages_path(id: id)
	end

	# def show
	# 	@sf_margin_report = SfMarginReport.find(params[:sf_margin_report][:id])
	# end

end