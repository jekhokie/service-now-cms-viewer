class ImageDatasController < ApplicationController
  def show
    respond_with_record_info 'db_image', 'image', params[:id]
  end
end
