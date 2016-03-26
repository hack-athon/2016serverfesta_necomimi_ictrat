class EegsController < ApplicationController
  def index
    @title = "Model Example"
    @datas = Eeg.all
  end
  def destroy
    @datas = Eeg.all
    @datas.destroy
    redirect_to eegs_index_path
  end
end
