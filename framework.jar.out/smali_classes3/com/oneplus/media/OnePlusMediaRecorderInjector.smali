.class public Lcom/oneplus/media/OnePlusMediaRecorderInjector;
.super Ljava/lang/Object;
.source "OnePlusMediaRecorderInjector.java"


# static fields
.field static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusMediaRecorderInjector"

.field public static mIsGetData:Z

.field private static mIsSensorStarted:Z

.field private static mOrientation:I

.field private static mOrientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mIsSensorStarted:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientationListener:Landroid/view/OrientationEventListener;

    sput v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientation:I

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mIsGetData:Z

    const-string v0, "OnePlusMediaRecorderInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientation:I

    return p0
.end method

.method public static fromDeviceOrientation()I
    .locals 2

    :goto_0
    sget v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientation:I

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x168

    sput v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientation:I

    goto :goto_0

    :cond_0
    rem-int/lit16 v0, v0, 0x168

    sput v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientation:I

    sget v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientation:I

    const/16 v1, 0x2d

    if-lt v0, v1, :cond_1

    const/16 v1, 0x91

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    sget v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientation:I

    const/16 v1, 0xe1

    if-lt v0, v1, :cond_2

    const/16 v1, 0x145

    if-ge v0, v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static startOrientationSensorInternal()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mIsSensorStarted:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/oneplus/media/OnePlusMediaRecorderInjector$1;

    invoke-direct {v1, v0}, Lcom/oneplus/media/OnePlusMediaRecorderInjector$1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    sget-object v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    const-string v1, "OnePlusMediaRecorderInjector"

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mIsSensorStarted:Z

    sget-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "MediaRecorder startOrientationSensorInternal() OK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "MediaRecorder startOrientationSensorInternal() FAIL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mIsSensorStarted:Z

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mIsGetData:Z

    sget-object v1, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v1, 0x0

    sput-object v1, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientationListener:Landroid/view/OrientationEventListener;

    sput v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientation:I

    :cond_3
    :goto_0
    return-void
.end method

.method public static stopOrientationSensorInternal()V
    .locals 2

    sget-object v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mIsSensorStarted:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusMediaRecorderInjector"

    const-string v1, "MediaRecorder stopOrientationSensorInternal()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mIsSensorStarted:Z

    sput-boolean v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mIsGetData:Z

    sget-object v1, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v1, 0x0

    sput-object v1, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientationListener:Landroid/view/OrientationEventListener;

    sput v0, Lcom/oneplus/media/OnePlusMediaRecorderInjector;->mOrientation:I

    :cond_1
    return-void
.end method
