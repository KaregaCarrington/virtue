Rails.application.routes.draw do
  get 'music_videos/index'
  get 'music_videos/ten_to_get_in'
  get 'music_videos/everywhere_i_go'
  get 'music_videos/relentless'
  get 'music_videos/childrens_story'

  devise_for :users
  get 'home/index'

  root 'home#index'
end
