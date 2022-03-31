class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/" do
      { message: "the world" }.to_json
    end

    #users information
    get '/users' do
      User.all.to_json(only: [:id, :name], include: {
        locations: {only: [:title]
        }
      })

    end

    get '/users/:id' do
     usersLoc= User.find(params[:id] )
     usersLoc.to_json(include: :location[:title])
    end

    post '/users/:id' do
      newUser=User.create( name: params[:name] )
      newUser.to_json
    end

    delete '/users/:id' do

      remove=User.find( params[:id])
      remove.destroy
      remove.to_json
    end




#location information
    get '/locations' do
      Location.all.to_json
    end

    get '/locations/:id' do
      Location.find(params[:id]).to_json
    end
    
    post '/locations/:id' do
      newLocation= Location.create(title:params[:title])
    end

    delete '/locations/:id' do

      remove= Location.find(params[:id])
      remove.destroy
      remove.to_json
    end
  
  end