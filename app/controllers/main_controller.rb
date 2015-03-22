class MainController < ApplicationController
  def index
    @sites = get_table_info('content_site')
    @pages = get_table_info('content_page')
  end

  private

  def get_table_info(table_name)
    return ServiceNowApi.table_request(table_name, 'sysparm_query=ORDERBYname&sysparm_fields=name,sys_id')
  end
end
