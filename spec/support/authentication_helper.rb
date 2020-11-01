module AuthenticationHelper
  def login_user
    # Before each test, create and login the user
    before(:each) do
      user = FactoryBot.create(:user)
      sign_in user
    end
  end
end
