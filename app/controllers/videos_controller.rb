class VideosController < ApplicationController
<<<<<<< HEAD
  
  def show_all
    
  end

  def show
    video_name = params["video_name"]

    videos = {
      "gladiator" => {
        title: 'Gladiator',
        video_id: 'FI1ylg4GKv8',
        description: "Crowe shows everyone what's up."        
      },

      "matilda" => {
        title: 'Matilda',
        video_id: 'EVWOQwZENBg',
        description: "Quite the random movie, but a classic for sure!"
      },

      "seinfeld" => {
        title: 'Seinfeld',
        video_id: 'm5OoR0Qjrlo',
        description: 'A great description on where socks really go'
        },

      "friends" => {
        title: 'Friends',
        video_id: 'XIsVHF2bwVs',
        description: 'Gotta love friends!'
      }
    }

    @video = videos[video_name]
  end
    
end



# def show_gladiator
#     @movie = {
#       title: 'Gladiator',
#       video_id: 'FI1ylg4GKv8',
#       description: "Crowe shows everyone what's up."
#     }
#   end

#   def show_matilda
#     @movie = {
#       title: 'Matilda',
#       video_id: 'EVWOQwZENBg',
#       description: "Quite the random movie, but a classic for sure!"
#     }
    
#   end


# def show_seinfeld
#     @movie = {
#       title: 'Seinfeld',
#       video_id: 'm5OoR0Qjrlo',
#       description: 'A great description on where socks really go'
#     }
#   end
=======

  def show
    id = params[:id]
    @video = Video.find(id)
  end

	def new
		@video = Video.new
	end


  def show_all
    @videos = Video.all
  end
  
	def create
		@video = Video.new(video_params)
		@video.save
		redirect_to root_path
	end

	private
	def video_params
			params.require(:video).permit(:title, :description, :youtube_id)
	end


>>>>>>> e-start

#   def show_friends
#     @movie = {
#       title: 'Friends',
#       video_id: 'XIsVHF2bwVs',
#       description: 'Gotta love friends!'
#     }
#   end
