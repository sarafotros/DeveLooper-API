class SoundsamplesController < ApplicationController
  def show
    @sound = SoundSample.where("name like ?", "%#{params[:name]}%").first
    puts params[:name]
    # soundfile = ActiveStorage::Blob.new(@sound.bin_data)

      # render file: soundfile

      send_data @sound.bin_data, filename: @sound.name, disposition: "attachment", type: @sound.mime_type
  end

  def create
    @sound = SoundSample.new(sound_params)
    @sound.bin_data = sound_params[:bin_data].read
    @sound.mime_type = sound_params[:bin_data].content_type
    @sound.name = sound_params[:bin_data].original_filename
    @sound.save
  end



private

def sound_params
  params.require(:sound_sample).permit(:bin_data)
end


end
