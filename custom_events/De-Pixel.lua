function onEvent(name,value1,value2)
    if name == "De-Pixel" then
        -- Reverts text to normal FNF
        setTextFont('scoreTxt', 'vcr.ttf')
        setTextSize('scoreTxt', '20')
        setTextFont('timeTxt', 'vcr.ttf')
        setTextSize('timeTxt', '33')

        -- Reverts the pause music
        setPropertyFromClass("substates.PauseSubState", "songName", "breakfast")
    end
end