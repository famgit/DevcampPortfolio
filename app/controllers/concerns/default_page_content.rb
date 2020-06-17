module DefaultPageContent
	extend ActiveSupport::Concern
	included do
	before_action :set_default_page
	end
		
	def set_default_page
		@page_title = "Devcamp portfolio | My Portfolio Website"
		@seo_keywords = "Jordan Hudgens Portfolio"
	end
end