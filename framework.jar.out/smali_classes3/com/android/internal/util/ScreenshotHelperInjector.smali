.class public Lcom/android/internal/util/ScreenshotHelperInjector;
.super Ljava/lang/Object;
.source "ScreenshotHelperInjector.java"


# static fields
.field private static final OP_SCREENSHOT_PACKAGE:Ljava/lang/String; = "com.oneplus.screenshot"

.field private static final OP_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.oneplus.screenshot.TakeScreenshotService"

.field private static final SCREENSHOT_TIMEOUT_MS:I = 0x2710

.field private static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSUI_SCREENSHOT_ERROR_RECEIVER:Ljava/lang/String; = "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

.field private static final TAG:Ljava/lang/String; = "OPScreenshotHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field final mLongshotTimeout:Ljava/lang/Runnable;

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final mScreenshotLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mScreenshotLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/ScreenshotHelperInjector$2;

    invoke-direct {v0, p0}, Lcom/android/internal/util/ScreenshotHelperInjector$2;-><init>(Lcom/android/internal/util/ScreenshotHelperInjector;)V

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mLongshotTimeout:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/util/ScreenshotHelperInjector;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/util/ScreenshotHelperInjector;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/util/ScreenshotHelperInjector;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/util/ScreenshotHelperInjector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method notifyScreenshotError()V
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public stopLongshotConnection()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "OPScreenshotHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OPLongshot stopLongshotConnection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mScreenshotLock:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelperInjector;->mLongshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public takeScreenshot(IZZLandroid/os/Handler;ZLandroid/os/Bundle;)V
    .locals 13

    move-object v8, p0

    move-object/from16 v9, p4

    iget-object v10, v8, Lcom/android/internal/util/ScreenshotHelperInjector;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    const-string v0, "OPScreenshotHelper"

    const-string v1, "OPLongshot Screenshot started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/internal/util/ScreenshotHelperInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const-string v0, "OPScreenshotHelper"

    const-string/jumbo v1, "reject screenshot before finishing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    return-void

    :cond_0
    iput-object v9, v8, Lcom/android/internal/util/ScreenshotHelperInjector;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.screenshot"

    const-string v3, "com.oneplus.screenshot.TakeScreenshotService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v12, Lcom/android/internal/util/ScreenshotHelperInjector$1;

    move-object v1, v12

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p4

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/ScreenshotHelperInjector$1;-><init>(Lcom/android/internal/util/ScreenshotHelperInjector;ILandroid/os/Handler;ZZLandroid/os/Bundle;)V

    move-object v1, v12

    iget-object v2, v8, Lcom/android/internal/util/ScreenshotHelperInjector;->mContext:Landroid/content/Context;

    const v3, 0x2000001

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OPScreenshotHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BindService called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, v8, Lcom/android/internal/util/ScreenshotHelperInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz p5, :cond_1

    iget-object v2, v8, Lcom/android/internal/util/ScreenshotHelperInjector;->mLongshotTimeout:Ljava/lang/Runnable;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v9, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v2, v8, Lcom/android/internal/util/ScreenshotHelperInjector;->mLongshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v9, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
