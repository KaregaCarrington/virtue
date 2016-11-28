Rails.application.routes.draw do
  get 'concerts/index'
  get 'concerts/bizzle'
  get 'concerts/datin'
  get 'concerts/lecrae'

  get 'music_videos/index'
  get 'music_videos/ten_to_get_in'
  get 'music_videos/everywhere_i_go'
  get 'music_videos/relentless'

  devise_for :users
  get 'home/index'

  root 'home#index'
end
