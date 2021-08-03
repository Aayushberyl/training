class UploadsController < ApplicationController
	def index
		@upload = Upload.new
	end
end
