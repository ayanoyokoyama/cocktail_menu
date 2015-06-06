class CommentsController < ApplicationController

	def create
		@product = Product.find(params[:product_id])
		@comment = @product.comments.new(comment_params)
		@comment.user = current_user
		@comment.save
		redirect_to do |format|
			if @comment.save
				format.html { redirect_to @product, notice: 'Review was created successfully' }
				format.json { render :show, status: :created, location: @product } 
			else
				format.html { redirect_to @product, alert: 'Review was not saved successfully' }
				format.json { render json: @comment.errors, status: :unprocessable_entry }
			end
		end
	end

	def destroy 

	end

end



def comment_params
	params.require(:comment).permit(:body, :rating)
end
