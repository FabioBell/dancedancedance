class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  before_action :require_login
  before_action :require_owner, only:[:edit, :update, :destroy]
  
  def index
    @songs = current_user.songs.includes :song_genre
  end

  def show
  end

  def new
    #@song = Song.new
    @song = Song.new
  end

  def edit
  end

  def create
    @song = current_user.songs.build(song_params)

    if @song.save
      redirect_to songs_path, notice: 'Song was successfully created.' 
    else
      render :new
    end
  end

  def update
    @song.update(song_params)
    redirect_to songs_path, notice: 'Song was successfully updated.'
  end

  def destroy
    @song.destroy
    redirect_to songs_path, notice: 'Song was successfully destroyed.'
  end

  def require_owner
    @song = current_user.songs.find_by(id: params[:id])
    redirect_to songs_path, notice:"Not Authorized" if @song.nil?
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:name, :duration, :song_genre_id)
    end
end
