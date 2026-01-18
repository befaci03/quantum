local class = require('quantum.class')
local UI    = require('quantum.ui')

UI.MenuItem = class(UI.FlatButton)
UI.MenuItem.defaults = {
	UIElement = 'MenuItem',
	noPadding = false,
	textInactiveColor = 'gray',
}
