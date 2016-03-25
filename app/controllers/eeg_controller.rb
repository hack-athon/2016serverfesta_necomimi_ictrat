class EegController < ApplicationControllerd
  def list
    # allメソッドで作成したテーブルをすべて取得します。
    @eeg = Eeg.all
  end
  def new
  end
end
