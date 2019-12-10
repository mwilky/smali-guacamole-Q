.class public Landroid/app/SkipdoFrameInjector;
.super Ljava/lang/Object;
.source "SkipdoFrameInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SkipdoFrameInjector"

.field private static sEnableFeatures:Z

.field private static skipdoFrame:Landroid/app/SkipdoFrameInjector;


# instance fields
.field mAT:Landroid/app/ActivityThread;

.field mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Landroid/app/SkipdoFrameInjector;->sEnableFeatures:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityThread;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SkipdoFrameInjector;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iput-object p1, p0, Landroid/app/SkipdoFrameInjector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/SkipdoFrameInjector;->mAT:Landroid/app/ActivityThread;

    return-void
.end method

.method private getAppWidgetManager()Landroid/appwidget/AppWidgetManager;
    .locals 2

    iget-object v0, p0, Landroid/app/SkipdoFrameInjector;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/SkipdoFrameInjector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-class v1, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager;

    iput-object v0, p0, Landroid/app/SkipdoFrameInjector;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    :cond_0
    iget-object v0, p0, Landroid/app/SkipdoFrameInjector;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/app/ActivityThread;)Landroid/app/SkipdoFrameInjector;
    .locals 2

    sget-object v0, Landroid/app/SkipdoFrameInjector;->skipdoFrame:Landroid/app/SkipdoFrameInjector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/SkipdoFrameInjector;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/SkipdoFrameInjector;-><init>(Landroid/content/Context;Landroid/app/ActivityThread;)V

    sput-object v0, Landroid/app/SkipdoFrameInjector;->skipdoFrame:Landroid/app/SkipdoFrameInjector;

    :cond_0
    sget-object v0, Landroid/app/SkipdoFrameInjector;->skipdoFrame:Landroid/app/SkipdoFrameInjector;

    return-object v0
.end method

.method private getWindowVisibility()I
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManagerGlobal;->getViews()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWindowVisibility()I

    move-result v4

    if-nez v4, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    move v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private hasActiveNotifications()Z
    .locals 4

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/app/SkipdoFrameInjector;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    nop

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/SkipdoFrameInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/app/INotificationManager;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_2
    :goto_0
    return v1
.end method

.method private hasBoundWidget()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/SkipdoFrameInjector;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/app/SkipdoFrameInjector;->getAppWidgetManager()Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetPackageList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/app/SkipdoFrameInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hasRemoteView()Z
    .locals 1

    invoke-direct {p0}, Landroid/app/SkipdoFrameInjector;->hasBoundWidget()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/app/SkipdoFrameInjector;->hasActiveNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getAppVisibility()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/app/SkipdoFrameInjector;->mAT:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/app/SkipdoFrameInjector;->mAT:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/SkipdoFrameInjector;->mAT:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->isFloating()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/app/SkipdoFrameInjector;->mAT:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/SkipdoFrameInjector;->mAT:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mStopped:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method

.method public isSkipDoFrameInBG()Z
    .locals 3

    sget-boolean v0, Landroid/app/SkipdoFrameInjector;->sEnableFeatures:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "persist.sys.skipBGDoFrame"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public shouldSkipDoFrameInBG()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/SkipdoFrameInjector;->getAppVisibility()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/app/SkipdoFrameInjector;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/app/SkipdoFrameInjector;->hasRemoteView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
