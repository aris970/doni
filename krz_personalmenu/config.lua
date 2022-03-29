local Keys = {
	['ESC'] = 322, ['F1'] = 288, ['F2'] = 289, ['F3'] = 170, ['F5'] = 166, ['F6'] = 167, ['F7'] = 168, ['F8'] = 169, ['F9'] = 56, ['F10'] = 57, 
	['~'] = 243, ['1'] = 157, ['2'] = 158, ['3'] = 160, ['4'] = 164, ['5'] = 165, ['6'] = 159, ['7'] = 161, ['8'] = 162, ['9'] = 163, ['-'] = 84, ['='] = 83, ['BACKSPACE'] = 177, 
	['TAB'] = 37, ['Q'] = 44, ['W'] = 32, ['E'] = 38, ['R'] = 45, ['T'] = 245, ['Y'] = 246, ['U'] = 303, ['P'] = 199, ['['] = 39, [']'] = 40, ['ENTER'] = 18,
	['CAPS'] = 137, ['A'] = 34, ['S'] = 8, ['D'] = 9, ['F'] = 23, ['G'] = 47, ['H'] = 74, ['K'] = 311, ['L'] = 182,
	['LEFTSHIFT'] = 21, ['Z'] = 20, ['X'] = 73, ['C'] = 26, ['V'] = 0, ['B'] = 29, ['N'] = 249, ['M'] = 244, [','] = 82, ['.'] = 81,
	['LEFTCTRL'] = 36, ['LEFTALT'] = 19, ['SPACE'] = 22, ['RIGHTCTRL'] = 70, 
	['HOME'] = 213, ['PAGEUP'] = 10, ['PAGEDOWN'] = 11, ['DELETE'] = 178,
	['LEFT'] = 174, ['RIGHT'] = 175, ['TOP'] = 27, ['DOWN'] = 173,
	['NENTER'] = 201, ['N4'] = 108, ['N5'] = 60, ['N6'] = 107, ['N+'] = 96, ['N-'] = 97, ['N7'] = 117, ['N8'] = 61, ['N9'] = 118
}

Config = {}

-- LANGUAGE --
Config.Locale = 'en'

-- GENERAL --
Config.MenuTitle = 'Inventory' -- change it to you're server name
Config.DoubleJob = false -- enable if you're using esx double job
Config.NoclipSpeed = 1.0 -- change it to change the speed in noclip
Config.JSFourIDCard = true -- enable if you're using jsfour-idcard

-- CONTROLS --
Config.Controls = {
	OpenMenu = {keyboard = Keys['K']},
	Pointing = {keyboard = Keys['B']},
	Crouch = {keyboard = Keys['LEFTCTRL']},
	StopTasks = {keyboard = Keys['@']},
	TPMarker = {keyboard1 = Keys['LEFTALT'], keyboard2 = Keys['&']}
}

-- GPS --
Config.GPS = {
	{label = 'Aucun', coords = nil},
	{label = 'Poste de Police', coords = vector2(425.13, -979.55)},
	{label = 'Garage Central', coords = vector2(-449.67, -340.83)},
	{label = 'Hôpital', coords = vector2(-33.88, -1102.37)},
	{label = 'Concessionnaire', coords = vector2(215.06, -791.56)},
	{label = 'Benny\'s Custom', coords = vector2(-212.13, -1325.27)},
	{label = 'Pôle Emploie', coords = vector2(-264.83, -964.54)},
	{label = 'Auto école', coords = vector2(-829.22, -696.99)},
	{label = 'Téquila-la', coords = vector2(-565.09, 273.45)},
	{label = 'Bahama Mamas', coords = vector2(-1391.06, -590.34)}
}

-- VOICE --
Config.Voice = {
	activated = false,
	defaultLevel = 8.0
}

Config.Voice.items = {
	{label = _U('voice_whisper'), level = 3.0},
	{label = _U('voice_normal'), level = Config.Voice.defaultLevel},
	{label = _U('voice_cry'), level = 14.0}
}


