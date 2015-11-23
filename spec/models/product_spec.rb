require 'rails_helper'

describe Product do

	before do
		#here you put your code to generate test content
		@product = Product.create(:name => 'mojito')
		@product.comments.create(:rating => 1, :user => @user, :body => "Awful cocktail!")
		@product.comments.create(:rating => 3, :user => @user, :body => "Okay cocktail.")
		@product.comments.create(:rating => 5, :user => @user, :body => "Perfect cocktail!")
	end
	
end

it "returns the average rating of all comments" do
end

it "should the averege rating to eq 3"

describe User do

	context "first and last name presnt" do

		before { @user = User.create(first_name: "marie", last_name: "yokoyama") }

		it "should return first and last"
			expect{@person.full_name}.to eq "marie yokoyama"
		end
	end

	context "last name missing" do

		before { @user = User.create(first_name: "John") }

		it "should return first name only" do
			expect(@person.full_name).to eq "marie"
		end
	end

	context "no names present" do

		before { @person = Person.new() }

		it "should return nothing" do
			expect(@person.full_name).to eq ""
		end
	end
end


	
