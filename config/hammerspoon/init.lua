local UVC_UTIL = os.getenv('HOME') .. '/Code/uvc-util/src/uvc-util'
local CAMERA_NAME = 'C922 Pro Stream Webcam'

local function applyZoom()
    hs.task.new(UVC_UTIL, nil, { '-N', CAMERA_NAME, '-s', 'zoom-abs=115' }):start()
end

local function watchCamera(camera)
    if camera:name() ~= CAMERA_NAME then
        return
    end
    camera:setPropertyWatcherCallback(function(cam)
        if cam:isInUse() then
            applyZoom()
        end
    end)
    camera:startPropertyWatcher()
end

for _, camera in ipairs(hs.camera.allCameras()) do
    watchCamera(camera)
end

hs.camera.setWatcherCallback(function(camera, event)
    if event == 'Added' then
        watchCamera(camera)
    end
end)
hs.camera.startWatcher()
