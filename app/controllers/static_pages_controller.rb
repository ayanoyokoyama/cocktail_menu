class StaticPagesController < ApplicationController

	def landing_page
		@product = Product.limit(3)
	end

  def index
  end
end
