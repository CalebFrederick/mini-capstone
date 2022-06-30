Rails.application.routes.draw do

get "/all_products", controller: "products", action: "show_all_method"

get "/first_product", controller: "products", action: "first_product"
end
