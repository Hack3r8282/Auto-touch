Start recording
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
