require "service-now-api"

class ApplicationController < ActionController::Base
  helper_method :respond_with_record_info

  protect_from_forgery :with => :exception

  private

  # perform a table record inquiry for the given table name and sys_id
  def respond_with_record_info(table_name, record_name, record_sys_id)
    record = ServiceNowApi.table_record_request(table_name, record_sys_id)

    render :partial => 'shared/show_record',
           :formats => [ :js ],
           :locals  => { :name => record_name, :record => record }
  end
end
