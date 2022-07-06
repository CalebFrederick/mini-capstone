class ProductsController < ApplicationController

    def show_all_method
      products = Product.all 
        render json: products.as_json(methods: [:friendly_created_at, :discount_10, :tax, :total])
    end

    def show_product
        @product = Product.find_by(id: params["id"])
        render template: "products/show"
    end

    def create_product
        @product = Product.create(params["name"], params["price"], params["image_url"], params["description"])
        render template: "products/show"
    end

    def update
        @product_id = params["id"]
        @product = Product.find_by(id: params["id"])

        @product.name = params["name"] || product.name
        @product.price = params["price"] ||product.price
        @product.image_url = params["image_url"] || product.image_url
        @product.description = params["description"] || product.description

        @product.save
        render template: "products/show"
    end

    def delete_product
        @product = Product.find_by(id: params["id"])
        @product.destroy
        render template: "products/show"
    end

end