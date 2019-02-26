Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products

  root 'welcome#index'
  get('/about', { to: 'welcome#about', as: :about })
  get('/contact_us', { to: 'contacts#index', as: :contact })
  post('/contact_us', { to: 'contacts#create' })
end
