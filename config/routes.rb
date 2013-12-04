MetubeCohort3::Application.routes.draw do

<<<<<<< HEAD
	root "videos#show_all"
	get '/videos' => 'videos#show_all', as: 'videos'
	get "/videos/:video_name" => 'videos#show', as: 'video'
	
=======
	get '/videos/new' => 'videos#new', as: 'new_video'
	post '/videos' => 'videos#create'

  root 'videos#show_all'
  get '/videos' => 'videos#show_all'
  get '/videos/:id' => 'videos#show', as: 'video'

>>>>>>> e-start
end


 	# get '/videos/gladiator' => 'videos#show_gladiator', as: 'gladiator_video'
  # get '/videos/matilda' => 'videos#show_matilda', as: 'matilda_video'  
  # get '/videos/seinfeld' => 'videos#show_seinfeld', as: 'seinfeld_video'  
  # get '/videos/friends' => 'videos#show_friends', as: 'friends_video'
