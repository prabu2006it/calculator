Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
match "/calculate" => "calculators#calculate" , as: "calculate",via: :post
root to: 'calculators#index'
end
