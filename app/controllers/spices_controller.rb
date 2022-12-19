class SpicesController < ApplicationController

    def index
        render json: Spice.all , status: :ok
    end

   def create
    spice = Spice.create!(spice_params)
    render json: spice, status: :created
   end
   
   def update
    spice = Spice.find_by(id: params[:id])
    spice.update(spice_params)
    render json: spice, status: :accepted
   end
   def destroy
    spice = Spice.find_by(id: params[:id])
    spice.destroy
    head :no_content
   end

   
   private
   def spice_params
    params.permit(:title, :description, :image,:notes, :rating)
   end


end
