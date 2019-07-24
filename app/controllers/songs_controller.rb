class SongsController < ApplicationController

      def index
        @songs = Song.all
      end

      def show
        @song = Song.find(params[:id])
      end

      def new
        @song = Song.new
      end

      def create
        @song = Song.create(create_params)
        if @song.save
         redirect_to "/songs/#{@song.id}", :notice => "Your song was saved!"
     else
         render "new"
     end
      end

      def edit
        @song = Song.find(params[:id])
      end

      def update
        @song = Song.find(params[:id])

        if(@song.update(create_params))
          redirect_to @song
        else
          render 'edit'
        end
      end

      def destroy
        @song = Song.find(params[:id])
        @song.destroy

        redirect_to songs_path

      end

  private

    def create_params
      params.require(:songs).permit(:title, :released, :release_year, :artist_name, :genre)
    end



end
