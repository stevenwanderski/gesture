class PagesController < ApplicationController
  def index
  end

  def poses
    @poses = Pose.gender(params[:gender]).nude(params[:nude]).limit(3)
    @poses = @poses.shuffle
    @duration = params[:duration].to_i * 1000
  end
end
