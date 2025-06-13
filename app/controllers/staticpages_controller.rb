class StaticpagesController < ApplicationController
  def index
    if params[:name]
      @pokemon=PokeApi.get(pokemon: params[:name])
    else
      @pokemon=PokeApi.get(pokemon: "bulbasaur")
    end
  end
end
