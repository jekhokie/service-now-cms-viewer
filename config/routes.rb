ServiceNowCmsViewer::Application.routes.draw do
  root 'main#index'

  resources :sites,          :only => [ :show ]
  resources :pages,          :only => [ :show ]
  resources :content_blocks, :only => [ :show ]
end
