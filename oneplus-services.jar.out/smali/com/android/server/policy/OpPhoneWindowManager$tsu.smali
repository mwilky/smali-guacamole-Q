.class Lcom/android/server/policy/OpPhoneWindowManager$tsu;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# instance fields
.field final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/policy/OpPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xb

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "oem_acc_key_define"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    new-array v1, v0, [I

    const/16 v4, 0xe

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "oem_acc_key_lock_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V    

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "buttons_force_home_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;
    
    const-string v4, "rice_version"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    
    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "tweaks_custom_home_double_app"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    
    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;
    
    const-string v4, "tweaks_custom_home_long_app"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    
    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;
    
    const-string v4, "tweaks_custom_back_double_app"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    
    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;
    
    const-string v4, "tweaks_custom_back_long_app"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    
    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;
    
    const-string v4, "tweaks_custom_recent_double_app"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    
    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "tweaks_custom_recent_long_app"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    
    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "buttons_show_on_screen_navkeys"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_home_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_home_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_menu_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_menu_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_back_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_back_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_app_switch_long_press_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_app_switch_double_tap_action"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "oem_acc_fingerprint_enrolling"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManager;->access$700()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "vibrate_on_touch_intensity"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_2
    new-array v0, v0, [I

    const/16 v1, 0x10

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_acc_sensor_three_finger"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3
    sget-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p0}, Lcom/android/server/policy/OpQuickPayInjector;->registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p0}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "navigation_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oneplus_fullscreen_gesture_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "op_gesture_button_side_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "systemui_navigation_bar_hided"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->updateSettings()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->updateSettings()V

    return-void
.end method

.method public updateSettings()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;
    
    invoke-virtual {v0}, Lcom/android/server/policy/OpPhoneWindowManager;->setCustomApp()V

    invoke-static {v0}, Lcom/android/server/policy/OpPhoneWindowManager;->access$800(Lcom/android/server/policy/OpPhoneWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [I

    const/16 v3, 0xb

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "oem_acc_key_define"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mKeysBehavior:I

    sget-boolean v2, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugKeyswap:Z

    if-eqz v2, :cond_0

    const-string v2, "OpPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mKeysBehavior: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/OpPhoneWindowManager;->mKeysBehavior:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/OpPhoneWindowManager;->updateSwapKey()V

    :cond_1
    new-array v2, v1, [I

    const/16 v3, 0xe

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "oem_acc_key_lock_mode"

    sget-object v5, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->values()[Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    move-result-object v3

    aget-object v2, v3, v2

    sput-object v2, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    sget-object v2, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    sget-object v3, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->tha:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v2, v3, :cond_3

    :try_start_1
    const-string v2, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "/proc/s1302/key_disable"

    const-string v3, "disable"

    :goto_0
    invoke-static {v2, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v2, "/proc/touchpanel/key_disable"

    const-string v3, "disable"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "OpPhoneWindowManager"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :cond_3
    :try_start_3
    const-string v2, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "/proc/s1302/key_disable"

    const-string v3, "enable"

    :goto_2
    invoke-static {v2, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v2, "/proc/touchpanel/key_disable"

    const-string v3, "enable"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_4
    const-string v3, "OpPhoneWindowManager"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_3
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "buttons_force_home_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    sput-boolean v2, Lcom/android/server/policy/OpPhoneWindowManager;->mForceHomeEnabled:Z

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "oem_acc_fingerprint_enrolling"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    sput-boolean v2, Lcom/android/server/policy/OpPhoneWindowManager;->mFingerprintEnrolling:Z

    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "buttons_show_on_screen_navkeys"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    goto :goto_6

    :cond_8
    move v2, v4

    :goto_6
    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OpPhoneWindowManager;->access$800(Lcom/android/server/policy/OpPhoneWindowManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManager;->access$900()Z

    move-result v5

    if-eq v2, v5, :cond_9

    invoke-static {v2}, Lcom/android/server/policy/OpPhoneWindowManager;->access$902(Z)Z

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v8, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v9, v4}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1502(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    invoke-static {v8, v4}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1402(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    invoke-static {v7, v4}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1302(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    invoke-static {v6, v4}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1202(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    invoke-static {v5, v4}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1102(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    invoke-static {v2, v4}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1002(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z

    :cond_9
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1600(Lcom/android/server/policy/OpPhoneWindowManager;)V

    new-array v2, v1, [I

    const/16 v3, 0x10

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "oem_acc_sensor_three_finger"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1700(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/OpPhoneWindowManager$you;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1700(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/OpPhoneWindowManager$you;

    move-result-object v3

    if-eqz v2, :cond_a

    move v2, v1

    goto :goto_7

    :cond_a
    const/4 v2, 0x2

    :goto_7
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_b
    sget-boolean v2, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/android/server/policy/OpQuickPayInjector;->updateSettings(Landroid/content/ContentResolver;)V

    :cond_c
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->updateSettings(Landroid/content/ContentResolver;)V

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "navigation_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "oneplus_fullscreen_gesture_type"

    const/4 v6, -0x2

    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_d

    move v3, v1

    goto :goto_8

    :cond_d
    move v3, v4

    :goto_8
    iget-object v5, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "op_gesture_button_side_enabled"

    invoke-static {v5, v7, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_e

    move v5, v1

    goto :goto_9

    :cond_e
    move v5, v4

    :goto_9
    iget-object v7, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget v7, v7, Lcom/android/server/policy/OpPhoneWindowManager;->mNavigationMode:I

    if-eq v2, v7, :cond_f

    iget-object v7, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iput v2, v7, Lcom/android/server/policy/OpPhoneWindowManager;->mNavigationMode:I

    const-string v2, "OpPhoneWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GestureButton: update navigation mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget v8, v8, Lcom/android/server/policy/OpPhoneWindowManager;->mNavigationMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    if-eq v3, v2, :cond_10

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iput-boolean v3, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    const-string v2, "OpPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GestureButton: update hideNavBar to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mIsSideEnabled:Z

    if-eq v5, v2, :cond_11

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iput-boolean v5, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mIsSideEnabled:Z

    const-string v2, "OpPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GestureButton: update sideEnabled to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/OpPhoneWindowManager;->mIsSideEnabled:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/OpPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    if-nez v5, :cond_12

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iput-boolean v1, v2, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    const-string v2, "OpPhoneWindowManager"

    const-string v3, "GestureButton: enable hideNavBar for bottom side gesture"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/OpPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    if-nez v3, :cond_13

    goto :goto_a

    :cond_13
    move v3, v4

    goto :goto_b

    :cond_14
    :goto_a
    move v3, v1

    :goto_b
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayPolicy;->setHasNavigationBar(Z)V

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "systemui_navigation_bar_hided"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_15

    move v2, v1

    goto :goto_c

    :cond_15
    move v2, v4

    :goto_c
    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/OpPhoneWindowManager;->access$1800(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/OpPhoneWindowManager$sis;

    move-result-object v3

    new-instance v5, Lcom/android/server/policy/vdb;

    invoke-direct {v5, p0, v2}, Lcom/android/server/policy/vdb;-><init>(Lcom/android/server/policy/OpPhoneWindowManager$tsu;Z)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManager;->access$700()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "vibrate_on_touch_intensity"

    invoke-static {v2, v3, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/OpPhoneWindowManager;->mLockPatternVibePattern:[J

    if-eqz v3, :cond_17

    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/OpPhoneWindowManager;->mVibrateOnTouchIntensity:I

    if-eq v3, v2, :cond_16

    const-string v3, "OpPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update vibrate_on_touch to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iput v2, v3, Lcom/android/server/policy/OpPhoneWindowManager;->mVibrateOnTouchIntensity:I

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLockPatternVibePattern:[J

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, -0x1

    int-to-long v1, v2

    aput-wide v1, p0, v4

    :cond_17
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0
.end method
