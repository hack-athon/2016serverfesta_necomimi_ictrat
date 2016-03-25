class EegsController < ApplicationController
  def index
    @title = "Model Example"
    @datas = Eeg.all
  end
end
