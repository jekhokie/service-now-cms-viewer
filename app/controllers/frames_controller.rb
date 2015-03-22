class FramesController < ApplicationController
  def show
    respond_with_record_info 'sys_ui_macro', 'frame', params[:id]
  end
end
