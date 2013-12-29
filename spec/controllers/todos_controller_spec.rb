require "spec_helper"

describe TodosController do 

  describe "#index" do

    it "assigns the total number of todos to @todos_count" do
      get :index
      expect(assigns(:todos_count)).to be_zero
    end

    context "views" do
      render_views

      it "renders a message if there are no todos" do
        get :index
        expect(response).to be_success
        assert_tag :div, attributes: { class: "no-todos" }
      end

    end

  end

end