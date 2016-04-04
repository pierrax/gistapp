require 'rails_helper'

RSpec.describe GistsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Gist. As you add validations to Gist, be sure to
  # adjust the attributes here as well.
  let(:user) { create(:user) }

  let(:valid_attributes) do
    {
      description: 'Gist title',
      file_name: 'gist.rb',
      code: '<p>test</p>',
      user_id: user.id
    }
  end

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GistsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all gists as @gists" do
      gist = Gist.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:gists)).to eq([gist])
    end
  end

  describe "GET show" do
    it "assigns the requested gist as @gist" do
      gist = Gist.create! valid_attributes
      get :show, {:id => gist.to_param}, valid_session
      expect(assigns(:gist)).to eq(gist)
    end
  end

  describe "GET new" do
    it "assigns a new gist as @gist" do
      get :new, {}, valid_session
      expect(assigns(:gist)).to be_a_new(Gist)
    end
  end

  describe "GET edit" do
    it "assigns the requested gist as @gist" do
      gist = Gist.create! valid_attributes
      get :edit, {:id => gist.to_param}, valid_session
      expect(assigns(:gist)).to eq(gist)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Gist" do
        expect {
          post :create, {:gist => valid_attributes}, valid_session
        }.to change(Gist, :count).by(1)
      end

      it "assigns a newly created gist as @gist" do
        post :create, {:gist => valid_attributes}, valid_session
        expect(assigns(:gist)).to be_a(Gist)
        expect(assigns(:gist)).to be_persisted
      end

      it "redirects to the created gist" do
        post :create, {:gist => valid_attributes}, valid_session
        expect(response).to redirect_to(Gist.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved gist as @gist" do
        post :create, {:gist => invalid_attributes}, valid_session
        expect(assigns(:gist)).to be_a_new(Gist)
      end

      it "re-renders the 'new' template" do
        post :create, {:gist => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested gist" do
        gist = Gist.create! valid_attributes
        put :update, {:id => gist.to_param, :gist => new_attributes}, valid_session
        gist.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested gist as @gist" do
        gist = Gist.create! valid_attributes
        put :update, {:id => gist.to_param, :gist => valid_attributes}, valid_session
        expect(assigns(:gist)).to eq(gist)
      end

      it "redirects to the gist" do
        gist = Gist.create! valid_attributes
        put :update, {:id => gist.to_param, :gist => valid_attributes}, valid_session
        expect(response).to redirect_to(gist)
      end
    end

    describe "with invalid params" do
      it "assigns the gist as @gist" do
        gist = Gist.create! valid_attributes
        put :update, {:id => gist.to_param, :gist => invalid_attributes}, valid_session
        expect(assigns(:gist)).to eq(gist)
      end

      it "re-renders the 'edit' template" do
        gist = Gist.create! valid_attributes
        put :update, {:id => gist.to_param, :gist => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested gist" do
      gist = Gist.create! valid_attributes
      expect {
        delete :destroy, {:id => gist.to_param}, valid_session
      }.to change(Gist, :count).by(-1)
    end

    it "redirects to the gists list" do
      gist = Gist.create! valid_attributes
      delete :destroy, {:id => gist.to_param}, valid_session
      expect(response).to redirect_to(gists_url)
    end
  end

end
