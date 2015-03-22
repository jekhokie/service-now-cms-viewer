class MainController < ApplicationController
  def index
    # perform initial REST requests up front
    @sites        = ServiceNowApi.table_request('content_site',  'sysparm_query=ORDERBYname&sysparm_fields=name,sys_id')
    @pages        = ServiceNowApi.table_request('content_page',  'sysparm_query=ORDERBYname&sysparm_fields=name,sys_id')
    @blocks       = ServiceNowApi.table_request('content_block', 'sysparm_query=ORDERBYname&sysparm_fields=name,sys_id,sys_class_name')
    @themes       = ServiceNowApi.table_request('content_theme', 'sysparm_query=ORDERBYname&sysparm_fields=name,sys_id')
    @style_sheets = ServiceNowApi.table_request('content_css',   'sysparm_query=ORDERBYname&sysparm_fields=name,sys_id')
    @layouts      = ServiceNowApi.table_request('sys_ui_macro',  'sysparm_query=category=layout%5EORDERBYname&sysparm_fields=name,sys_id')

    # normal block content
    @header_blocks  = @blocks.select{ |block| block["sys_class_name"] == "content_block_header"       }
    @menu_blocks    = @blocks.select{ |block| block["sys_class_name"] == "content_block_menu"         }
    @dynamic_blocks = @blocks.select{ |block| block["sys_class_name"] == "content_block_programmatic" }
    @list_blocks    = @blocks.select{ |block| block["sys_class_name"] == "content_block_lists"        }
    @static_blocks  = @blocks.select{ |block| block["sys_class_name"] == "content_block_static"       }

    # special content
    @flash_blocks  = @blocks.select{ |block| block["sys_class_name"] == "content_block_flash"  }
    @iframe_blocks = @blocks.select{ |block| block["sys_class_name"] == "content_block_iframe" }
  end
end
