class PostClipsController < ApplicationController
  before_action :set_post_clip, only: [:show, :update, :destroy]

  # GET /post_clips
  # GET /post_clips.json
  def index
    @post_clips = PostClip.all
  end

  # GET /post_clips/1
  # GET /post_clips/1.json
  def show
  end

  # POST /post_clips
  # POST /post_clips.json
  def create
    @post_clip = PostClip.new(post_clip_params)

    if @post_clip.save
      render :show, status: :created, location: @post_clip
    else
      render json: @post_clip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post_clips/1
  # PATCH/PUT /post_clips/1.json
  def update
    if @post_clip.update(post_clip_params)
      render :show, status: :ok, location: @post_clip
    else
      render json: @post_clip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /post_clips/1
  # DELETE /post_clips/1.json
  def destroy
    @post_clip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_clip
      @post_clip = PostClip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_clip_params
      params.require(:post_clip).permit(:name, :description, :content)
    end
end
