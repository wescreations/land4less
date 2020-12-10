Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'properties/special'
  resources :properties do
    member do
    get :delete
  end
end

  root to: 'properties#index'
	get 'contact' => 'contact#index'
	get 'about_us' => 'about_us#index'
	get 'faq' => 'faq#index'
	get 'testimonials' => 'testimonials#index'
	get 'financing' => 'financing#index'
	get 'process' => 'process#index'
	get 'sell_your_land' => 'sell_your_land#index'
	get 'make_offer' => 'make_offer#index'
end
