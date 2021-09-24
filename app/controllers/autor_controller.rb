class AutorController < ApplicationController
    def index
        @autores = Autor.all

        render 200, json: @autoreres 
    end

    def show
        @autor = Autor.find(params[:id])

        render 200, json: @autor
        
    end
    def create
        @autor = Autor.new(autor_params)
        
        if @autor.save
            render :created, json: @autor
        else
            render :band_request, json: @autor.errors            
        end
        def autor_params
            params.require(:autor).permit(:nombre_autor, :username)
        end        
    end
end
