function onCreatePost()
    if not isAchievementUnlocked("so_retroacheivements") then
        unlockAchievement("so_retroacheivements")
    end

	setPropertyFromClass("substates.PauseSubState", "songName", "pauseSA64")
end