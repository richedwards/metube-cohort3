MetubeCohort3::Application.routes.draw do

	get "/videos/:video_name" => 'videos#show', as: 'video'
	root "videos#show_all"
  get '/videos' => 'videos#show_all'
  # get '/videos/gladiator' => 'videos#show_gladiator', as: 'gladiator_video'
  # get '/videos/matilda' => 'videos#show_matilda', as: 'matilda_video'  
  # get '/videos/seinfeld' => 'videos#show_seinfeld', as: 'seinfeld_video'  
  # get '/videos/friends' => 'videos#show_friends', as: 'friends_video'

end
