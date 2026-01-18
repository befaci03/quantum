local class = require('quantum.class')
local UI    = require('quantum.ui')

UI.FlatButton = class(UI.Button)
UI.FlatButton.defaults = {
	UIElement = 'FlatButton',
	textColor = 'black',
	textFocusColor = 'white',
	noPadding = true,
}
function UI.FlatButton:setParent()
	self.backgroundColor = self.parent:getProperty('backgroundColor')
	self.backgroundFocusColor = self.backgroundColor

	UI.Button.setParent(self)
end
