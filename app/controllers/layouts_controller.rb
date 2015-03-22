class LayoutsController < ApplicationController
  def show
    respond_with_record_info 'sys_ui_macro', 'layout', params[:id]
  end
end
