local Security = require('quantum.security')
local SHA      = require('quantum.crypto.sha2')
local Terminal = require('quantum.terminal')

local password = Terminal.readPassword('Enter new password: ')

if password then
	Security.updatePassword(SHA.compute(password))
	print('Password updated')
end
