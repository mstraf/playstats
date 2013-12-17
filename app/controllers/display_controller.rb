class DisplayController < ApplicationController
  def index
    @files=Dir.glob("#{Rails.public_path}/*.xml")
    @plays=Play.all
    
  end

end
