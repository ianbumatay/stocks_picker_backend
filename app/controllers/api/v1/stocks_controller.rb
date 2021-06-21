class Api::V1::StocksController < ApplicationController

    def index 
        stocks = Stock.all 
        render json: stocks
    end  

    def create 
        stock = Stock.new(stock_params)

        if stock.save 
            render json: stock 
        else
            render json: {message: "Stock data not found"} 
        end
    end  

    def show 
        stock = Stock.find(params[:id]) 
        render json: stock 
    end 

    def destroy 
        stock = Stock.find(params[:id])
        stock.destroy 
    end

    private 

    def stock_params 
        params.require(:stock).permit(:name, :symbol, :price)
    end

end
