Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/products/new" => "products#new", as: :new_product
  post "/products" => "products#create", as: :products
  get "/products/:id" => "products#show", as: :product
  get "/products" => "products#index"
  delete "/products/:id" => "products#destroy"
  get "/products/:id/edit" => "products#edit", as: :edit_product
  patch "/products/:id" => "products#update"

  root 'welcome#index'
  get('/about', { to: 'welcome#about', as: :about })
  get('/contact_us', { to: 'contacts#index', as: :contact })
  post('/contact_us', { to: 'contacts#create' })
end
