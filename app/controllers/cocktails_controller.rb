class CocktailsController < ApplicationController
    before_action :set_cocktail, only: [:show]

    # GET /cocktails
    def index
        @cocktails = Cocktail.all
    end

    # GET /cocktails/:id
    def show
    end

    # Get /cocktails/new
    def new
        @cocktail = Cocktail.new
    end

    # POST /cocktails
    def create
        @cocktail = Cocktail.new(cocktail_params)

        if @cocktail.save
            redirect_to cocktail_path(@cocktail), notice: 'Cocktail was successfully created.'
        else
            render :new
        end
    end

    private

    def cocktail_params
        params.require(:cocktail).permit(:name, :photo)
    end

    def set_cocktail
        @cocktail = Cocktail.find(params[:id])
    end
end