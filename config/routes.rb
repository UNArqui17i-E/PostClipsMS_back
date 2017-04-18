Rails.application.routes.draw do
  namespace :api do#, defaults:{format: :json} do
    namespace :v1 do
      resources :post_clips do
        collection do
          get 'clips_by_board/:board_id', to: "post_clips#clips_by_board" # api/v1/post_clips/clips_by_board(get)
        end
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
