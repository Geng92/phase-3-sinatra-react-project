class FavoritesController < ApplicationController

    get "/favorites" do
        favorites = Favorite.all
        favorites.to_json 
    end

    get "/favorites/:id" do
        favorite = Favorite.find(params[:id])
        favorite.to_json
    end
end