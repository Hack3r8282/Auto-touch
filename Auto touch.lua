-- Start recording
function startRecording()
    autotouch.startRecording()
end

-- Stop recording
function stopRecording()
    autotouch.stopRecording()
end

-- Playback recording
function playRecording()
    autotouch.playRecording()
end

-- Bind keys to functions
autotouch.bindKey("r", startRecording)
autotouch.bindKey("s", stopRecording)
autotouch.bindKey("p", playRecording)

-- Create a UI menu to let the user select an action upon launch
local selections = autotouch.dialog({
    {type = "label", text = "Auto-Touch Controller App"},
    {type = "radio", title = "Choose an Action:", keys = {"Record", "Stop", "Play"}, value = "Play"}
})

-- Trigger functions based on the user's UI selection
if selections and selections["Choose an Action:"] == "Record" then
    startRecording()
elseif selections and selections["Choose an Action:"] == "Play" then
    playRecording()
end
