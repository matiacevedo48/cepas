require 'rails_helper'

RSpec.describe "Wines", type: :request do
    before :each do
        @user = User.create(email: "prueba@gmail.com", password: "123456", password_confirmation: "123456", admin: true)
        login_as(@user)
    end

    context "GET index (show wines)" do
        it "renders the index template" do
            get wines_path
            expect(response).to render_template("index")
        end

        it 'check wines creation and show in index' do
            wine = Wine.create(name: 'Wine x')
            wines = Wine.all
            get "/wines/"
            expect(assigns(:wines)).to eq(wines)
        end
    end

    describe 'GET show' do
        context "GET show" do  
            it 'renders the show template' do
                wine = Wine.create(name: "Test")
                id = wine.id
                get "/wines/#{id}/"
                expect(response).to render_template('wines/show')
            end
        end
    end	
end
