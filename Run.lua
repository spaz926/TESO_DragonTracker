EVENT_MANAGER:RegisterForEvent(DragonTracker.name, EVENT_ADD_ON_LOADED, DragonTracker.Events.onLoaded)
EVENT_MANAGER:RegisterForEvent(DragonTracker.name, EVENT_PLAYER_ACTIVATED, DragonTracker.Events.onLoadScreen)
-- EVENT_MANAGER:RegisterForEvent(DragonTracker.name, EVENT_GAME_CAMERA_UI_MODE_CHANGED, DragonTracker.Events.onGuiChanged) -- Used to dump some data, so to debug only

LibDragonWorldEvent.Events.callbackManager:RegisterCallback(
    LibDragonWorldEvent.Events.callbackEvents.dragon.new,
    DragonTracker.Events.onNewDragon
)
LibDragonWorldEvent.Events.callbackManager:RegisterCallback(
    LibDragonWorldEvent.Events.callbackEvents.dragonList.removeAll,
    DragonTracker.Events.onRemoveAllFromDragonList
)