class PagesController < ApplicationController
  def index
  end

  def poses
    @poses = Pose.gender(params[:gender]).nude(params[:nude]).limit(40).order('RAND()')
    @poses = @poses.shuffle
    @pose1 = @poses.shift
    @pose2 = @poses.shift
    @duration = params[:duration].to_i * 1000
    @timer = params[:timer]
  end
end
