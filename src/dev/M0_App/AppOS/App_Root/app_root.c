#include "app_root.h"
#include "AppOS/App_Blink/app_blink.h"
#include "AppOS/App_Alive/app_alive.h"
#include "AppOS/App_XTP/app_xtp.h"      

void AppRoot_RegisterAll(void) {
    App_Blink_Register();
    App_Alive_Register();
    App_XTP_Register();
}