require 'spec_helper'

describe PostsController do
  
  describe "GET 'index'" do
    before do
        get :index
      end

      it { should respond_with(:success) }
      it { should render_template(:index) }
  end

  describe "GET 'new'" do
    before do
        get :new
      end

      it { should respond_with(:success) }
      it { should render_template(:new) }
  end
end
