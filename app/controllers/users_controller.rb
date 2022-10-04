class UsersController < ApplicationController
    get "/users" do
        user = User.all
        user.to_json
    end

    get "users/:id" do
        user = User.find(params[:id])
        user.to_json
    end

    post "/users" do
       user = User.create(name:params[:name])
       status 201   #201 = created
       user.to_json
    end

    delete "/users/:id" do
        user = User.find(params[:id])
        User.destroy
        status 204  #204 = no content
    end
end