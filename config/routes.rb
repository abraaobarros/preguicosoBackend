Preguicoso::Application.routes.draw do
  
  resources :pedidos

  resources :estabelecimentos

  resources :item_cardapios

  root :to => "pages#home"
  get "pages/home"
  
  match '/home',  :to => 'pages#home'
 
 
 
end
