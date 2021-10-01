class ApplicationController < Sinatra::Base

  set :default_content_type, 'application/json'


 
    get '/bakeries' do
      # get all the bakeries from the database
    bakeries = Bakery.all
    # send them back as a JSON array
    bakeries.to_json
    end

    # GET /bakeries/:id
    get '/bakeries/:id' do
      binding.pry
      bakery = Bakery.find(params[:id])
      bakery.to_json
    end

    get '/baked_goods/by_price' do
      
    end
end
