function onInit()
    Interface.onWindowOpened = onWindowOpened
end

function onWindowOpened(window)
  local node = window.getDatabaseNode()
  if not node then return end
  
  local module = DB.getModule(node)
  
  local sourceControl = window.createControl("stringcontrol", "module_name")
  sourceControl.setAnchor("bottom", "", "bottom", "absolute", -10)
  sourceControl.setAnchor("left", "", "left");
  sourceControl.setAnchor("right", "", "right");
  sourceControl.setEnabled(false)
  local text = sourceControl.addTextWidget()
  text.setFont("sheetlabel")
  text.setText(module)
  text.setMaxWidth(0)
end