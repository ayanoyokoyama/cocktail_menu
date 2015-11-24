require 'rails_helper'

describe Product do

	before do
		#here you put your code to generate test content
		@product = Product.create(:name => 'mojito')
		@product.comments.create(:rating => 1, :user => @user, :body => "Awful cocktail!")
		@product.comments.create(:rating => 3, :user => @user, :body => "Okay cocktail.")
		@product.comments.create(:rating => 5, :user => @user, :body => "Perfect cocktail!")
	end
	

it "returns the average rating of all comments" do
end

it "should the averege rating to eq 3"


end


	
