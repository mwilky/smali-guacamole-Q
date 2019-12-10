.class public Landroid/provider/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# static fields
.field public static final PARALLEL_READ_CONFIG:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARALLEL_WRITE_CONFIG:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SettingsInjector"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/SettingsInjector;->PARALLEL_WRITE_CONFIG:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/SettingsInjector;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    sget-object v0, Landroid/provider/SettingsInjector;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string/jumbo v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/SettingsInjector;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string/jumbo v1, "ringtone_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/SettingsInjector;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string/jumbo v1, "notification_sound"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/SettingsInjector;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string v1, "alarm_alert"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/SettingsInjector;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string/jumbo v1, "mms_notification"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/SettingsInjector;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_screen_allow_private_notifications"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/SettingsInjector;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string/jumbo v1, "op_gesture_button_side_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/SettingsInjector;->PARALLEL_READ_CONFIG:Ljava/util/HashSet;

    const-string v1, "default_input_method"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static putStringForParallelUser(Landroid/content/ContentResolver;Landroid/content/IContentProvider;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_1

    sget-object v0, Landroid/provider/SettingsInjector;->PARALLEL_WRITE_CONFIG:Ljava/util/HashSet;

    invoke-virtual {v0, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_user"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, p4, p5, v2}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SettingsInjector"

    const-string/jumbo v2, "no need to throw an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
