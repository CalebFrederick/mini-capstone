class ProductsController < ApplicationController

    def show_all_method
        products = Product.all 
        render json: products.as_json
    end

    def first_product
        product = Product.first
        render json: product.as_json
    end

end
