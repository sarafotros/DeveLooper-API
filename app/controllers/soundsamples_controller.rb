class SoundsamplesController < ApplicationController
  def show
    @sound = SoundSample.find()
  end

  def create
    @sound = SoundSample.new(sound_params)
    @sound.bin_data = sound_params[:bin_data]
    # .read
    @sound.save
  end



private

def sound_params
  params.require(:sound_sample).permit(:name, :bin_data)
end


end
