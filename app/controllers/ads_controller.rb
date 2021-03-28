class AdsController < ApplicationController
    before_action :required_logger_user

    def new
        @ad = Ad.new
    end

    def create
        @ad = current_user.ads.build(ad_params)

        # byebug
        unless @ad[:id].blank? && @ad[:title].blank? && @ad[:description].blank? && @ad[:price].blank? && @ad[:images].blank?
            @ad.save
            redirect_to root_path, notice: "Anúcio criado com sucesso!!!"
        else 
            redirect_to new_ad_path, notice: "* Digite todos os valores."
        end
    end

    private
    def ad_params
        params.require(:ad).permit(:title, :description, :price, :images) 
    end
end