class EegsController < ApplicationController
  def index
    @title = "EEG健康測定"
    @datas = Eeg.all
  end
  def destroy
    @datas = Eeg.all
    @datas.destroy_all
    redirect_to eegs_index_path
  end
  def show
    @title = "EEG健康測定"
    @datas = Eeg.all
  end
end
