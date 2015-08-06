require 'rails_helper'

	describe Comment do

	context "body test" do

    	before { @comment = Comment.new(body: "this is my comment body") }

    	it "should return my body"
      	expect(@comment.body).to eq "this is my comment body"
    end
  end
		




