$(document).ready ->
  # create the folder tree from the elements
  $('#tree').fancytree
    imagePath: "skin-win8",
    activate: (event, data) ->
      node = data.node
      if node.data.href
        $.getScript node.data.href, (data) ->
          eval(data.script)
      return
