class StyleSheetsController < ApplicationController
  def show
    respond_with_record_info 'content_css', 'style sheet', params[:id]
  end
end
