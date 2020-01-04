.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_COMMIT:I = 0x4

.field public static final CALLBACK_INPUT:I = 0x0

.field public static final CALLBACK_INSETS_ANIMATION:I = 0x2

.field private static final CALLBACK_LAST:I = 0x4

.field private static final CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final CALLBACK_TRAVERSAL:I = 0x3

.field private static final DEBUG_FRAMES:Z = false

.field private static final DEBUG_JANK:Z = false

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static LAST_FRAME_INTERVAL:I = 0x0

.field private static final MOTION_EVENT_ACTION_CANCEL:I = 0x3

.field private static final MOTION_EVENT_ACTION_DOWN:I = 0x0

.field private static final MOTION_EVENT_ACTION_MOVE:I = 0x2

.field private static final MOTION_EVENT_ACTION_UP:I = 0x1

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final OPTS_INPUT:Z = true

.field private static final SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x7609299L
    .end annotation
.end field

.field private static volatile mMainInstance:Landroid/view/Choreographer;

.field private static volatile sFrameDelay:J

.field private static sService:Lcom/oneplus/os/IOnePlusService;

.field private static final sSfThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAT:Landroid/app/ActivityThread;

.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mCallbacksRunning:Z

.field private mConsumedDown:Z

.field private mConsumedMove:Z

.field private mDebugPrintNextFrameTimeDelta:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mFPSDivisor:I

.field private mFastResponse:Z

.field mFrameInfo:Landroid/graphics/FrameInfo;

.field private mFrameIntervalNanos:J
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mFrameScheduled:Z

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mIsShoudDoAnimation:Z

.field private mIsSkipDoFrameInBG:Z

.field private mIsVsyncScheduled:Z

.field private mJankManagerHelper:Landroid/view/JankManagerHelper;

.field private mLastFrameTimeNanos:J
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private mMotionEventType:I

.field private mTouchMoveNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    const-string v1, "debug.choreographer.vsync"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    const-string v1, "debug.choreographer.frametime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    new-instance v0, Landroid/view/Choreographer$3;

    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    const/16 v0, 0x3e8

    sput v0, Landroid/view/Choreographer;->LAST_FRAME_INTERVAL:I

    const-string v0, "input"

    const-string v1, "animation"

    const-string v2, "insets_animation"

    const-string/jumbo v3, "traversal"

    const-string v4, "commit"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Choreographer;->mAT:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Choreographer;->mIsShoudDoAnimation:Z

    iput-boolean v1, p0, Landroid/view/Choreographer;->mIsSkipDoFrameInBG:Z

    iput v1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    iput v2, p0, Landroid/view/Choreographer;->mMotionEventType:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    iput-boolean v2, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    iput-boolean v2, p0, Landroid/view/Choreographer;->mIsVsyncScheduled:Z

    iput-boolean v2, p0, Landroid/view/Choreographer;->mFastResponse:Z

    new-instance v3, Landroid/graphics/FrameInfo;

    invoke-direct {v3}, Landroid/graphics/FrameInfo;-><init>()V

    iput-object v3, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    iput-object v0, p0, Landroid/view/Choreographer;->mJankManagerHelper:Landroid/view/JankManagerHelper;

    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    new-instance v3, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v3, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    sget-boolean v3, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v3, :cond_0

    new-instance v3, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v3, p0, p1, p2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;I)V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    iput-object v3, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const v3, 0x4e6e6b28    # 1.0E9f

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result v4

    div-float/2addr v3, v4

    float-to-long v3, v3

    iput-wide v3, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x4

    if-gt v3, v4, :cond_1

    iget-object v4, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v5, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v5, p0, v0}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "debug.hwui.fps_divisor"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->setFPSDivisor(I)V

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Choreographer;->mAT:Landroid/app/ActivityThread;

    iget-object v0, p0, Landroid/view/Choreographer;->mAT:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mSkipdoframe:Landroid/app/SkipdoFrameInjector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/Choreographer;->mAT:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mSkipdoframe:Landroid/app/SkipdoFrameInjector;

    invoke-virtual {v0}, Landroid/app/SkipdoFrameInjector;->isSkipDoFrameInBG()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/Choreographer;->mIsSkipDoFrameInBG:Z

    :cond_2
    new-array v0, v1, [I

    const/16 v1, 0xc3

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/JankManagerHelper;

    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    iget-wide v2, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    invoke-direct {v0, v1, v2, v3}, Landroid/view/JankManagerHelper;-><init>(Ljava/lang/Object;J)V

    iput-object v0, p0, Landroid/view/Choreographer;->mJankManagerHelper:Landroid/view/JankManagerHelper;

    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;ILandroid/view/Choreographer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method static synthetic access$102(Landroid/view/Choreographer;)Landroid/view/Choreographer;
    .locals 0

    sput-object p0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object p0
.end method

.method static synthetic access$400(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .locals 1

    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method private dispose()V
    .locals 1

    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    return-void
.end method

.method public static getFrameDelay()J
    .locals 2

    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method public static getMainThreadInstance()Landroid/view/Choreographer;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static getRefreshRate()F
    .locals 2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method private getService()Lcom/oneplus/os/IOnePlusService;
    .locals 2

    sget-object v0, Landroid/view/Choreographer;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "opservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/os/IOnePlusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOnePlusService;

    move-result-object v1

    sput-object v1, Landroid/view/Choreographer;->sService:Lcom/oneplus/os/IOnePlusService;

    sget-object v1, Landroid/view/Choreographer;->sService:Lcom/oneplus/os/IOnePlusService;

    return-object v1
.end method

.method public static getSfInstance()Landroid/view/Choreographer;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private isRunningOnLooperThreadLocked()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifySurfaceFlingerUpdate()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/view/Choreographer;->getService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    sput-object v0, Landroid/view/Choreographer;->sService:Lcom/oneplus/os/IOnePlusService;

    const-string v0, "Surface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opservice is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/view/Choreographer;->sService:Lcom/oneplus/os/IOnePlusService;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/view/Choreographer;->sService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/Choreographer;->sService:Lcom/oneplus/os/IOnePlusService;

    invoke-interface {v0}, Lcom/oneplus/os/IOnePlusService;->notifySurfaceFlingerUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Choreographer"

    const-string v2, "Choreographer_notifySurfaceFlinger RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 3

    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v2, Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v2, v1}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$1;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    :goto_0
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    return-object v0
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 7

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long v3, v1, p4

    iget-object v5, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3, v4, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    cmp-long v5, v3, v1

    if-gtz v5, :cond_0

    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iput p1, v5, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v6, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v6, v5, v3, v4}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    return-void
.end method

.method public static releaseInstance()V
    .locals 2

    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    sget-object v1, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    invoke-direct {v0}, Landroid/view/Choreographer;->dispose()V

    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

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

.method private scheduleFrameLocked(J)V
    .locals 11

    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    iget-boolean v1, p0, Landroid/view/Choreographer;->mIsVsyncScheduled:Z

    const-wide/32 v2, 0xf4240

    const/4 v4, 0x0

    if-nez v1, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-wide v7, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    cmp-long v1, v5, v7

    if-lez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scheduleFrameLocked-mMotionEventType:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/view/Choreographer;->mMotionEventType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mTouchMoveNum:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mConsumedDown:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mConsumedMove:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {p0}, Landroid/view/Choreographer;->getLastFrameTimeNanos()J

    move-result-wide v7

    div-long/2addr v7, v2

    sub-long v7, p1, v7

    sget v1, Landroid/view/Choreographer;->LAST_FRAME_INTERVAL:I

    int-to-long v9, v1

    cmp-long v1, v7, v9

    if-lez v1, :cond_0

    iput-boolean v0, p0, Landroid/view/Choreographer;->mFastResponse:Z

    :cond_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/Choreographer;->mFastResponse:Z

    if-eqz v1, :cond_1

    const-string v1, "notifySurfaceFlingerUpdate"

    invoke-static {v5, v6, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0}, Landroid/view/Choreographer;->notifySurfaceFlingerUpdate()V

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    iput-boolean v4, p0, Landroid/view/Choreographer;->mFastResponse:Z

    :cond_1
    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    iget v1, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    if-ne v1, v0, :cond_5

    iget-boolean v1, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v2, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iput-boolean v0, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    monitor-exit p0

    return-void

    :cond_3
    iput-boolean v4, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    iput-boolean v4, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    iput-boolean v4, p0, Landroid/view/Choreographer;->mFastResponse:Z

    goto :goto_0

    :cond_4
    iput-boolean v4, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    iget-boolean v1, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v2, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iput-boolean v0, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    monitor-exit p0

    return-void

    :cond_5
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :goto_1
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_8

    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_2

    :cond_8
    iget-wide v5, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    div-long/2addr v5, v2

    sget-wide v1, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v5, v1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v3, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_9
    :goto_2
    return-void
.end method

.method private scheduleVsyncLocked()V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mIsVsyncScheduled:Z

    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0

    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    return-void
.end method

.method public static subtractFrameDelay(J)J
    .locals 4

    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    sub-long v2, p0, v0

    :goto_0
    return-wide v2
.end method


# virtual methods
.method doCallbacks(IJ)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, v2

    const-wide/32 v6, 0xf4240

    div-long v6, v4, v6

    invoke-virtual {v0, v6, v7}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    move-object v6, v0

    if-nez v6, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    const/4 v7, 0x4

    const-wide/16 v8, 0x8

    if-ne v2, v7, :cond_1

    sub-long v10, v4, p2

    const-string v7, "jitterNanos"

    long-to-int v12, v10

    invoke-static {v8, v9, v7, v12}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-wide/16 v12, 0x2

    iget-wide v14, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    mul-long/2addr v14, v12

    cmp-long v7, v10, v14

    if-ltz v7, :cond_1

    iget-wide v12, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    rem-long v12, v10, v12

    iget-wide v14, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    add-long/2addr v12, v14

    sub-long v14, v4, v12

    :try_start_1
    iput-wide v14, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_1
    move-wide/from16 v14, p2

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    iget-object v3, v1, Landroid/view/Choreographer;->mJankManagerHelper:Landroid/view/JankManagerHelper;

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    iget v4, v3, Landroid/view/JankManagerHelper;->mDoframeTimes:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/view/JankManagerHelper;->mDoframeTimes:I

    :cond_2
    const/4 v3, 0x0

    :try_start_2
    sget-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v0, v6

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, v14, v15}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    iget-object v4, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v4

    goto :goto_1

    :cond_3
    iget-object v4, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iput-boolean v3, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    :cond_4
    iget-object v0, v6, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v1, v6}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    move-object v6, v0

    if-nez v6, :cond_4

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    iget-object v4, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    iput-boolean v3, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    :goto_2
    iget-object v3, v6, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v1, v6}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    move-object v6, v3

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    move-wide/from16 v14, p2

    :goto_3
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_3
.end method

.method doFrame(JI)V
    .locals 18
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/view/Choreographer;->mJankManagerHelper:Landroid/view/JankManagerHelper;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/view/JankManagerHelper;->mJankManagerState:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/view/Choreographer;->mJankManagerHelper:Landroid/view/JankManagerHelper;

    sput v2, Landroid/view/JankManagerHelper;->mJunkLevel:I

    :cond_0
    iget-object v3, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-boolean v2, v1, Landroid/view/Choreographer;->mIsVsyncScheduled:Z

    iget-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-wide/from16 v14, p1

    move-object v13, v3

    goto/16 :goto_2

    :cond_1
    move-wide/from16 v4, p1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v8, v6, p1

    iget-wide v10, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    cmp-long v0, v8, v10

    if-ltz v0, :cond_4

    :try_start_3
    iget-wide v10, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    div-long v10, v8, v10

    sget v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    int-to-long v12, v0

    cmp-long v0, v10, v12

    if-ltz v0, :cond_2

    const-string v0, "Choreographer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipped "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " frames!  The application may be doing too much work on its main thread."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, v1, Landroid/view/Choreographer;->mJankManagerHelper:Landroid/view/JankManagerHelper;

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroid/view/Choreographer;->mJankManagerHelper:Landroid/view/JankManagerHelper;

    invoke-virtual {v0, v10, v11}, Landroid/view/JankManagerHelper;->setJunkLevel(J)V

    :cond_3
    iget-wide v12, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    rem-long v12, v8, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long v14, v6, v12

    goto :goto_0

    :cond_4
    move-wide/from16 v14, p1

    :goto_0
    :try_start_4
    iget-wide v10, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    cmp-long v0, v14, v10

    if-gez v0, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    monitor-exit v3

    return-void

    :cond_5
    iget v0, v1, Landroid/view/Choreographer;->mFPSDivisor:I

    const/4 v10, 0x1

    if-le v0, v10, :cond_6

    iget-wide v11, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sub-long v11, v14, v11

    move-object v13, v3

    :try_start_5
    iget-wide v2, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    iget v0, v1, Landroid/view/Choreographer;->mFPSDivisor:I

    move-wide/from16 v16, v8

    int-to-long v8, v0

    mul-long/2addr v2, v8

    cmp-long v0, v11, v2

    if-gez v0, :cond_7

    const-wide/16 v2, 0x0

    cmp-long v0, v11, v2

    if-lez v0, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    monitor-exit v13

    return-void

    :cond_6
    move-object v13, v3

    move-wide/from16 v16, v8

    :cond_7
    iget-object v0, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v0, v4, v5, v14, v15}, Landroid/graphics/FrameInfo;->setVsync(JJ)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z

    iput-wide v14, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const-wide/16 v2, 0x8

    :try_start_6
    const-string v4, "Choreographer#doFrame"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-wide/32 v4, 0xf4240

    div-long v4, v14, v4

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    iget-object v4, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v4}, Landroid/graphics/FrameInfo;->markInputHandlingStart()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v14, v15}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    iget-boolean v0, v1, Landroid/view/Choreographer;->mIsSkipDoFrameInBG:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Landroid/view/Choreographer;->mAT:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mSkipdoframe:Landroid/app/SkipdoFrameInjector;

    if-eqz v0, :cond_8

    iget-object v0, v1, Landroid/view/Choreographer;->mAT:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mSkipdoframe:Landroid/app/SkipdoFrameInjector;

    invoke-virtual {v0}, Landroid/app/SkipdoFrameInjector;->shouldSkipDoFrameInBG()Z

    move-result v0

    iput-boolean v0, v1, Landroid/view/Choreographer;->mIsShoudDoAnimation:Z

    :cond_8
    const/4 v0, 0x0

    iget-boolean v4, v1, Landroid/view/Choreographer;->mIsShoudDoAnimation:Z

    if-nez v4, :cond_9

    iget-object v4, v1, Landroid/view/Choreographer;->mAT:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    const-string v4, "net.oneplus.launcher"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iput-boolean v10, v1, Landroid/view/Choreographer;->mIsShoudDoAnimation:Z

    :cond_9
    iget-boolean v4, v1, Landroid/view/Choreographer;->mIsShoudDoAnimation:Z

    if-eqz v4, :cond_a

    iget-object v4, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v4}, Landroid/graphics/FrameInfo;->markAnimationsStart()V

    invoke-virtual {v1, v10, v14, v15}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    goto :goto_1

    :cond_a
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_b

    const-string v4, "Choreographer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip doframe for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v14, v15}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    iget-object v4, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v4}, Landroid/graphics/FrameInfo;->markPerformTraversalsStart()V

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v14, v15}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v14, v15}, Landroid/view/Choreographer;->doCallbacks(IJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    iget-object v0, v1, Landroid/view/Choreographer;->mJankManagerHelper:Landroid/view/JankManagerHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v6, v7}, Landroid/view/JankManagerHelper;->reportJankOrCountData(J)V

    :cond_c
    return-void

    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v13, v3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v13, v3

    move-wide/from16 v14, p1

    :goto_2
    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_2
.end method

.method public doFrameImmediately()V
    .locals 3

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v2, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doScheduleCallback(I)V
    .locals 4

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

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

.method doScheduleVsync()V
    .locals 2

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

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

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getFrameIntervalNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    return-wide v0
.end method

.method public getFrameTime()J
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getJankManagerHelper()Landroid/view/JankManagerHelper;
    .locals 1

    iget-object v0, p0, Landroid/view/Choreographer;->mJankManagerHelper:Landroid/view/JankManagerHelper;

    return-object v0
.end method

.method public getLastFrameTimeNanos()J
    .locals 3

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2

    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postCallbackImmediately(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 6

    if-eqz p2, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long v3, v1, p4

    iget-object v5, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3, v4, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setFPSDivisor(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setFPSDivisor(I)V

    return-void
.end method

.method public setMotionEventInfo(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p2, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    iput p1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
