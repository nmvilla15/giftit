require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "get users_path" do
    it "renders the index view" do
      FactoryBot.create_list(:user, 10)
      get users_path
      expect(response.status).to eq(200)
    end
  end

  describe "get new_user_path" do  
   it "renders the :new template" do 
     get new_user_path
     expect(response.status).to eq(200)
   end
  end

end

#I only have new and index views so didn't create a lot of tests