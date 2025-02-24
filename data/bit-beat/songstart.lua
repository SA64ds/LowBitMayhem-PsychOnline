function onCreatePost()

-- Sets text to the SMB1 font
setTextFont('scoreTxt', 'smb1.ttf')
setTextSize('scoreTxt', '17')
setTextFont('timeTxt', 'smb1.ttf')
setTextSize('timeTxt', '25')

setTextFont("songTitle", "smb1.ttf")
setTextFont("labelName", "smb1.ttf")
setTextFont("songPlaying", "smb1.ttf")

-- Changes the Pause Menu Music
    setPropertyFromClass("substates.PauseSubState", "songName", "breakfast-smb1")	

end

-- Starts the crowd sound when the countdown begins
function onStartCountdown()
    playSound("smas_chat", 0.75, "crowdchat", false)
    counter=3
end

-- In theory, starts making the crowd sound fade-out when the countdown hits GO!
function onCountdownTick(counter)
    soundFadeOut("crowdchat", 1.0, 0)
end

function onPause()
	playSound("pause")
    return Function_Continue;
end
function onResume()
	playSound("pause")
end