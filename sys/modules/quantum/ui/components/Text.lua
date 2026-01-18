local class = require('quantum.class')
local UI    = require('quantum.ui')
local Util  = require('quantum.util')

UI.Text = class(UI.Window)
UI.Text.defaults = {
	UIElement = 'Text',
	value = '',
	height = 1,
}
function UI.Text:layout()
	if not self.width and not self.ex then
		self.width = #tostring(self.value)
	end
	UI.Window.layout(self)
end

function UI.Text:draw()
	self:write(1, 1, Util.widthify(self.value, self.width, self.align))
end
