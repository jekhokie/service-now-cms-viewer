$("div.main").html("<%= escape_javascript(render :partial => 'shared/show_keyval',
                                                 :formats => [ :html ],
                                                 :locals  => { :record_name => name, :record => record }) %>")
