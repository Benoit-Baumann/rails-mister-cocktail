module CocktailHelper
    def cocktail_image_for(cocktail)
        if cocktail.photo.present?
            cl_image_path cocktail.photo, height: 300, width: 400, crop: :fill 
        else
            image_url "cocktail.jpg"
        end
    end 
end