class ThemesController < ApplicationController
  def show
    respond_with_record_info 'content_theme', 'theme', params[:id]
  end
end
