class PagesController < ApplicationController
  def show
    respond_with_record_info 'content_page', 'page', params[:id]
  end
end
