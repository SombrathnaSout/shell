pragma Singleton

import Quickshell

Singleton {
    property var screens: ({})
    property var panels: ({})

    function getForActive(): PersistentProperties {
        if (!Hyprland.focusedMonitor) {
            console.warn("No focused monitor found");
            return null;
        }
        
        const focusedMonitorName = Hyprland.focusedMonitor.name;
        const result = screens[focusedMonitorName];
        
        if (!result) {
            console.warn("No screen found for focused monitor:", focusedMonitorName);
            console.log("Available screens:", Object.keys(screens));
        }
        
        return result;
    }
}
