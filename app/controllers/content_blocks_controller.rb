class ContentBlocksController < ApplicationController
  def show
    respond_with_record_info params[:table], params[:name], params[:id]
  end
end
