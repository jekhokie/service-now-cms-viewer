ServiceNowCmsViewer::Application.routes.draw do
  root 'main#index'

  resources :sites,          :only => [ :show ]
  resources :pages,          :only => [ :show ]
  resources :themes,         :only => [ :show ]
  resources :frames,         :only => [ :show ]
  resources :layouts,        :only => [ :show ]
  resources :style_sheets,   :only => [ :show ]
  resources :content_blocks, :only => [ :show ]
end
