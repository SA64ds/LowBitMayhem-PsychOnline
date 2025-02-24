-- 4:3 script by AzurePulse

function onCreatePost()
	if getModSetting("43ratio") then
		makeLuaSprite('borderL', 'aspect',0,0)
		addLuaSprite('borderL', false)
		setObjectCamera("borderL", "camother")
		makeLuaSprite('vcrshit2', 'vcrshit',0,0)  
		addLuaSprite('vcrshit2', false)
		setObjectCamera("vcrshit2", "hud")

		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, "x", getPropertyFromGroup('strumLineNotes', i, "x") + 87)
		end
		for i = 4,7 do
			setPropertyFromGroup('strumLineNotes', i, "x", getPropertyFromGroup('strumLineNotes', i, "x") + - 78)
			setPropertyFromGroup('strumLineNotes', i, "y", getPropertyFromGroup('strumLineNotes', i, "y") + 0)
		end
	end

	initLuaShader("mosaic")

	setProperty("healthBar.visible", false)
	setProperty("healthBarBG.visible", false)
	setProperty("iconP1.visible", false)
	setProperty("iconP2.visible", false)
end

function onCreate()
	-- background shit
	makeLuaSprite('retrosky', 'stages/retro/retrosky', -1200, -300);
	setScrollFactor('retrosky', 0.3, 0.3);
	scaleObject("retrosky", 2,2, 2,2)
	
	makeLuaSprite('retroground', 'stages/retro/retroground', -1200, 130);
	setScrollFactor('retroground', 0.9, 0.9);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('retroclouds', 'stages/retro/retroclouds', -1020, -500);
		setScrollFactor('retroclouds', 0.7, 0.7);
		
		makeLuaSprite('retrobush', 'stages/retro/retrobush', -1200, 10);
		setScrollFactor('retrobush', 0.9, 0.9);

		makeLuaSprite('retropipe', 'stages/retro/retropipe', 800, -245);
		setScrollFactor('retropipe', 0.9, 0.9);
	end

	addLuaSprite('retrosky', false);
	addLuaSprite('retroclouds', false);
	addLuaSprite('retroground', false);
	addLuaSprite('retrobush', false);
	addLuaSprite('retropipe', false);
end

function onUpdate(elapsed)
	setProperty("game.camZooming", false)
end

-- Yes, I remade an entire stage in LUA just for a joke, I love my life :)