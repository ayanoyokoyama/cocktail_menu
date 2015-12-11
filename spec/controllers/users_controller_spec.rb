require 'rails_helper'


describe UsersController, :type => :controller do
	
	before do
		@user = create(:user)
		@user2 = User.create(:email => "test2@exaple.com", :password => "genericpassword2")
	end

	describe "GET #show" do
		context "User is logged in" do
			before do
				sign_in @user
			end
			it "shows the correct user details" do
				get :show, id: @user.id
				expect(assigns(:user)).to eq @user
			end
			it "redirecrs to root path if user tries to access other users show page" do
				get:show, id: @user2.id
				expect(response).to redirect_to(root_path)
			end
	end

	context "No user is logged in" do
		it "redirects to login" do
			get :show, id: @user.id
			expect(response).to redirect_to(root_path)
		end
	end
end

end