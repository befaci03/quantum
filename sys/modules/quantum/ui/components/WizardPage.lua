local class = require('quantum.class')
local UI    = require('quantum.ui')

UI.WizardPage = class(UI.Window)
UI.WizardPage.defaults = {
	UIElement = 'WizardPage',
	ey = -2,
}
function UI.WizardPage.validate()
	return true
end
