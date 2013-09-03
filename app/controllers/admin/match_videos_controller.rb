class Admin::MatchVideosController < Admin::BaseController
  before_action :set_admin_match_video, only: [:show, :edit, :update, :destroy]

  # GET /admin/match_videos
  def index
    @admin_match_videos = Admin::MatchVideo.ordered
  end

  # GET /admin/match_videos/1
  def show
  end

  # GET /admin/match_videos/new
  def new
    @admin_match_video = Admin::MatchVideo.new
  end

  # GET /admin/match_videos/1/edit
  def edit
  end

  # POST /admin/match_videos
  def create
    @admin_match_video = Admin::MatchVideo.new(admin_match_video_params)

    if @admin_match_video.save
		flash[:success] = 'Match video was successfully created.'	
      	redirect_to @admin_match_video
    else
      	render action: 'new'
    end
  end

  # PATCH/PUT /admin/match_videos/1
  def update
    if @admin_match_video.update(admin_match_video_params)
		flash[:success] = 'Match video was successfully updated.'	
      	redirect_to @admin_match_video
    else
      	render action: 'edit'
    end
  end

  # DELETE /admin/match_videos/1
  def destroy
   	@admin_match_video.destroy
	flash[:success] = 'Match video was successfully destroyed.'	
    redirect_to admin_match_videos_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_match_video
      @admin_match_video = Admin::MatchVideo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_match_video_params
      params.require(:admin_match_video).permit!
    end
end
