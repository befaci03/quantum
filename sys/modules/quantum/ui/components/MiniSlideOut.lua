local class = require('quantum.class')
local UI    = require('quantum.ui')

UI.MiniSlideOut = class(UI.SlideOut)
UI.MiniSlideOut.defaults = {
	UIElement = 'MiniSlideOut',
    noFill = true,
    backgroundColor = 'primary',
    height = 1,
}
function UI.MiniSlideOut:postInit()
    self.close_button = UI.Button {
        x = -1,
        backgroundColor = self.backgroundColor,
        backgroundFocusColor = self.backgroundColor,
        text = 'x',
        event = 'slide_hide',
        noPadding = true,
    }
    if self.label then
        self.label_text = UI.Text {
            x = 2,
            value = self.label,
        }
    end
end

function UI.MiniSlideOut:show(...)
    UI.SlideOut.show(self, ...)
    self:addTransition('slideLeft', { easing = 'outBounce' })
end
