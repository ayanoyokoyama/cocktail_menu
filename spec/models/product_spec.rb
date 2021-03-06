require 'rails_helper'

describe Product do

	context "when product has comments" do

		before do
			#here you put your code to generate test content
			@user = User.create(:email => 'marie@gmail.com', :password => 'abcdefg')
			@product = Product.create(:name => 'mojito')
			@product.comments.create(:rating => 1, :user => @user, :body => "Awful cocktail!")
			@product.comments.create(:rating => 3, :user => @user, :body => "Okay cocktail.")
			@product.comments.create(:rating => 5, :user => @user, :body => "Perfect cocktail!")
		end
		
		it "returns the average rating of all comments" do
			expect(@product.average_rating).to eq 3
		end
	end
end
	
