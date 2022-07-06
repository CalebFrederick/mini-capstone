Rails.application.routes.draw do

get "/all_products", controller: "products", action: "show_all_method"

# get "/first_product", controller: "products", action: "first_product"

# get "/second_product", controller: "products", action: "second_product"

# get "/third_product", controller: "products", action: "third_product"

#get "/product/:id", controller: "products", action: "show_product"

get "/products/:id" => "products#show_product"

post "/products" => "products#create_product"

# post "/products" => 

patch "/products:id" => "products#update"

patch "/products:id" => "products#delete_product"
end
