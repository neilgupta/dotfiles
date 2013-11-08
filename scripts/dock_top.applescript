do shell script "/usr/sbin/system_profiler SPDisplaysDataType | grep 'Resolution'"
tell the result to set {screenWidth, screenHeight} to {word 2, word 4}
set activeApp to (path to frontmost application as Unicode text)

tell application activeApp
	set bounds of window 1 to {0, 0, screenWidth, screenHeight}
end tell
