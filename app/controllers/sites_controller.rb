class SitesController < ApplicationController
  def show
    respond_with_record_info 'content_site', 'site', params[:id]
  end
end
