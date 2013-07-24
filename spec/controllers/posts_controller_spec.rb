require 'spec_helper'

describe PostsController do
  
  describe "GET 'index'" do
    
    let!(:post) do
      create(:post)
    end

    before do
      get :index
    end

    it { should respond_with(:success) }
    it { should render_template(:index) }
    it { should render_with_layout(:application) }

    it "should assign all posts" do
      assigns(:posts).should include(post)
    end
  end

  describe "GET 'new'" do
    before do
      get :new
    end

    it { should respond_with(:success) }
    it { should render_template(:new) }
  end
end
