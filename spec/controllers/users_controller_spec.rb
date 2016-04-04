require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:user) { create(:user) }

  describe 'GET show' do
    it 'returns http success' do
      get :show, id: user.id
      expect(response).to be_success
    end
  end
end
