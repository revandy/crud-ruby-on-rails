Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'diary' => 'diary#home'
  get 'diary/new' => 'diary#new'
  post 'diary/create' => 'diary#create'
  get 'diary/:id/edit' => 'diary#edit', as: :edit
  patch 'diary/:id/' => 'diary#update'
  get 'diary/:id/delete' => 'diary#delete'


#Api Controller
	namespace 'api' do
  		get 'diary' => 'diary#index'
  		get 'diary/:id' => 'diary#show'
  		post 'diary/new' => 'diary#create'
	end


end
