//@ pragma Env QS_NO_RELOAD_POPUP=1

import "modules"
import "modules/drawers"
import "modules/background"
import "modules/areapicker"
import "modules/lock"
import Quickshell
import "./services/"
import "./modules/sidebarLeft/"

ShellRoot {
    Background {}
    property bool enableSidebarLeft: true
    LazyLoader { active: enableSidebarLeft; component: SidebarLeft {} }
    Drawers {}
    AreaPicker {}
    Lock {}

    Shortcuts {}
}
