.class public Lcom/color/app/ColorAppSwitchManager;
.super Ljava/lang/Object;
.source "ColorAppSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserverDelegate;,
        Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;
    }
.end annotation


# static fields
.field public static final APP_SWITCH_VERSION:I = 0x1

.field private static final DEBUG:Z

.field public static final EXTRA_NOTIFY_TYPE:Ljava/lang/String; = "extra_notify_type"

.field public static final EXTRA_SWITCH_INFO:Ljava/lang/String; = "extyra_switch_info"

.field public static final INTENT_OP_APP_SWITCH:Ljava/lang/String; = "opos.intent.action.APP_SWITCH"

.field public static final NOTIFY_TYPE_ACTIVITY_ENTER:I = 0x3

.field public static final NOTIFY_TYPE_ACTIVITY_EXIT:I = 0x4

.field public static final NOTIFY_TYPE_APP_ENTER:I = 0x1

.field public static final NOTIFY_TYPE_APP_EXIT:I = 0x2

.field public static final OP_APP_SWITCH_SAFE_PERMISSIONS:Ljava/lang/String; = "opos.permission.OPOS_COMPONENT_SAFE"

.field private static final TAG:Ljava/lang/String; = "ColorAppSwitchManager"

.field private static sInstance:Lcom/color/app/ColorAppSwitchManager;


# instance fields
.field private final mAppSwitchObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;",
            "Lcom/android/server/wm/IOPAppSwitchObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOAms:Landroid/app/OPActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/color/app/ColorAppSwitchManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/color/app/ColorAppSwitchManager;->mAppSwitchObservers:Ljava/util/Map;

    new-instance v0, Landroid/app/OPActivityManager;

    invoke-direct {v0}, Landroid/app/OPActivityManager;-><init>()V

    iput-object v0, p0, Lcom/color/app/ColorAppSwitchManager;->mOAms:Landroid/app/OPActivityManager;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/color/app/ColorAppSwitchManager;->DEBUG:Z

    return v0
.end method

.method public static getInstance()Lcom/color/app/ColorAppSwitchManager;
    .locals 2

    sget-object v0, Lcom/color/app/ColorAppSwitchManager;->sInstance:Lcom/color/app/ColorAppSwitchManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/color/app/ColorAppSwitchManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/color/app/ColorAppSwitchManager;->sInstance:Lcom/color/app/ColorAppSwitchManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/color/app/ColorAppSwitchManager;

    invoke-direct {v1}, Lcom/color/app/ColorAppSwitchManager;-><init>()V

    sput-object v1, Lcom/color/app/ColorAppSwitchManager;->sInstance:Lcom/color/app/ColorAppSwitchManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/color/app/ColorAppSwitchManager;->sInstance:Lcom/color/app/ColorAppSwitchManager;

    return-object v0
.end method


# virtual methods
.method public registerAppSwitchObserver(Landroid/content/Context;Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Z
    .locals 6

    sget-boolean v0, Lcom/color/app/ColorAppSwitchManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerAppSwitchObserver observer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorAppSwitchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/color/app/ColorAppSwitchManager;->mAppSwitchObservers:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/color/app/ColorAppSwitchManager;->mAppSwitchObservers:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "ColorAppSwitchManager"

    const-string v3, "already register before"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v0

    :cond_2
    if-nez p3, :cond_3

    new-instance v2, Lcom/color/app/ColorAppSwitchConfig;

    invoke-direct {v2}, Lcom/color/app/ColorAppSwitchConfig;-><init>()V

    move-object p3, v2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, p3, Lcom/color/app/ColorAppSwitchConfig;->observerFingerPrint:I

    new-instance v2, Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserverDelegate;

    invoke-direct {v2, p0, p2}, Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserverDelegate;-><init>(Lcom/color/app/ColorAppSwitchManager;Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/color/app/ColorAppSwitchManager;->mOAms:Landroid/app/OPActivityManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/color/app/ColorAppSwitchManager;->mAppSwitchObservers:Ljava/util/Map;

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/color/app/ColorAppSwitchManager;->mOAms:Landroid/app/OPActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, p3}, Landroid/app/OPActivityManager;->registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return v0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "ColorAppSwitchManager"

    const-string/jumbo v5, "registerAppSwitchObserver remoteException "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    :goto_1
    return v0
.end method

.method public unregisterAppSwitchObserver(Landroid/content/Context;Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;)Z
    .locals 6

    sget-boolean v0, Lcom/color/app/ColorAppSwitchManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unRegisterAppSwitchObserver observer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorAppSwitchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/color/app/ColorAppSwitchManager;->mAppSwitchObservers:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/color/app/ColorAppSwitchManager;->mAppSwitchObservers:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/IOPAppSwitchObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    :try_start_1
    iget-object v3, p0, Lcom/color/app/ColorAppSwitchManager;->mOAms:Landroid/app/OPActivityManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/color/app/ColorAppSwitchManager;->mAppSwitchObservers:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/color/app/ColorAppSwitchConfig;

    invoke-direct {v3}, Lcom/color/app/ColorAppSwitchConfig;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iput v4, v3, Lcom/color/app/ColorAppSwitchConfig;->observerFingerPrint:I

    iget-object v4, p0, Lcom/color/app/ColorAppSwitchManager;->mOAms:Landroid/app/OPActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/app/OPActivityManager;->unregisterAppSwitchObserver(Ljava/lang/String;Lcom/color/app/ColorAppSwitchConfig;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return v0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "ColorAppSwitchManager"

    const-string/jumbo v5, "removeOnConfigChangedListener remoteException "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :goto_1
    return v0
.end method
