DeweeSe::Application.routes.draw do
  root 'welcome#index'
  get "welcome/index"
  get 'throw' => 'welcome#throw'
end
