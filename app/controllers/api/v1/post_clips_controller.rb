class Api::V1::PostClipsController < ApplicationController
  before_action :set_post_clip, only: [:show, :update, :destroy]

  # GET /post_clips
  def index
    @post_clips = PostClip.all

    render json: @post_clips
  end

  # GET /post_clips/1
  def show
    render json: @post_clip
  end

  def clips_by_board
    @post_clip = PostClip.clips_by_board(params[:board_id])
    render json: @post_clip
  end

  # POST /post_clips
  def create
    @post_clip = PostClip.new(post_clip_params)

    if @post_clip.save
      render json: @post_clip, status: :created, :location => api_v1_post_clips_path(@post_clip)
    else
      render json: @post_clip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /post_clips/1
  def update
    if @post_clip.update(post_clip_params)
      render json: @post_clip,:location => api_v1_post_clip_path(@post_clip)
    else
      render json: @post_clip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /post_clips/1
  def destroy
    @post_clip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_clip
      @post_clip = PostClip.clips_by_id(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_clip_params
      params.require(:post_clip).permit(:name, :description, :contentLink,:attachment ,:board_id)
    end
end
