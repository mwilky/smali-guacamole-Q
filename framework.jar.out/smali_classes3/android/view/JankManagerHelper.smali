.class public Landroid/view/JankManagerHelper;
.super Ljava/lang/Object;
.source "JankManagerHelper.java"


# static fields
.field static final DEFAULT_FPS:I = 0x3c

.field static final FPS_DIVISION:I = 0x3

.field static final JANK_LEVEL_HIGH:I = 0x2

.field static final JANK_LEVEL_LOW:I = 0x1

.field static final JANK_LEVEL_TRACE:I = 0x3

.field static final JANK_TYPE_NODRAW:I = 0x3

.field static final JANK_TYPE_ONCE:I = 0x1

.field static final JANK_TYPE_TOTAL:I = 0x2

.field static mJunkLevel:I

.field static mJunkTimes:I

.field static mPackageName:Ljava/lang/String;

.field static mViewTitle:Ljava/lang/String;


# instance fields
.field mDoframeTimes:I

.field mDrawframeTimes:I

.field private mFrameIntervalNanos:J

.field mJankLastDrawFrameTime:J

.field mJankLevelHighValue:I

.field mJankLevelLowValue:I

.field mJankLevelTraceValue:I

.field mJankLongStartTime:J

.field mJankLongValue:I

.field mJankManagerState:Z

.field private mLock:Ljava/lang/Object;

.field protected mOnePlusServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

.field mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/view/JankManagerHelper;->mJunkTimes:I

    sput v0, Landroid/view/JankManagerHelper;->mJunkLevel:I

    const/4 v0, 0x0

    sput-object v0, Landroid/view/JankManagerHelper;->mPackageName:Ljava/lang/String;

    sput-object v0, Landroid/view/JankManagerHelper;->mViewTitle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "persist.sys.jankmanager.state"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/JankManagerHelper;->mJankManagerState:Z

    const-string/jumbo v0, "persist.sys.jankmanager.levellow"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/JankManagerHelper;->mJankLevelLowValue:I

    const-string/jumbo v0, "persist.sys.jankmanager.levelhigh"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/JankManagerHelper;->mJankLevelHighValue:I

    const/16 v0, 0x1e

    const-string/jumbo v1, "persist.sys.jankmanager.long"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/JankManagerHelper;->mJankLongValue:I

    const-string/jumbo v1, "persist.sys.jankmanager.levelsystrace"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/JankManagerHelper;->mJankLevelTraceValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/JankManagerHelper;->mJankLongStartTime:J

    iput-wide v0, p0, Landroid/view/JankManagerHelper;->mJankLastDrawFrameTime:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/JankManagerHelper;->mDoframeTimes:I

    iput v0, p0, Landroid/view/JankManagerHelper;->mDrawframeTimes:I

    const/16 v0, 0x64

    iput v0, p0, Landroid/view/JankManagerHelper;->mWindowType:I

    iput-object p1, p0, Landroid/view/JankManagerHelper;->mLock:Ljava/lang/Object;

    iput-wide p2, p0, Landroid/view/JankManagerHelper;->mFrameIntervalNanos:J

    return-void
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


# virtual methods
.method public reportJank(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    invoke-static {}, Landroid/view/JankManagerHelper;->getRefreshRate()F

    move-result v0

    iget-object v1, p0, Landroid/view/JankManagerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v0

    float-to-long v2, v2

    :try_start_0
    iput-wide v2, p0, Landroid/view/JankManagerHelper;->mFrameIntervalNanos:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v1, 0x42700000    # 60.0f

    sub-float v1, v0, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, p3

    sget-object p3, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_OPSERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p3}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/os/IOnePlusServiceManager;

    iput-object p3, p0, Landroid/view/JankManagerHelper;->mOnePlusServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    iget-object p3, p0, Landroid/view/JankManagerHelper;->mOnePlusServiceManager:Lcom/oneplus/os/IOnePlusServiceManager;

    invoke-interface {p3, p1, p2, v1, p4}, Lcom/oneplus/os/IOnePlusServiceManager;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public reportJankOrCountData(J)V
    .locals 13

    const-wide/16 v0, 0x8

    const-string v2, "doframeadd"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v2, p0, Landroid/view/JankManagerHelper;->mJankManagerState:Z

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/view/JankManagerHelper;->mWindowType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/16 v3, 0x64

    if-ge v2, v3, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v4, v2, p1

    iget-object v6, p0, Landroid/view/JankManagerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    long-to-int v7, v4

    :try_start_0
    iget-wide v8, p0, Landroid/view/JankManagerHelper;->mFrameIntervalNanos:J

    long-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-le v7, v8, :cond_2

    iget-wide v7, p0, Landroid/view/JankManagerHelper;->mJankLongStartTime:J

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-lez v7, :cond_0

    iget-wide v7, p0, Landroid/view/JankManagerHelper;->mJankLongStartTime:J

    sub-long v7, v2, v7

    long-to-float v7, v7

    const v8, 0x358637bd    # 1.0E-6f

    mul-float/2addr v7, v8

    const/high16 v8, 0x44fa0000    # 2000.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    sput v10, Landroid/view/JankManagerHelper;->mJunkTimes:I

    iput-wide v2, p0, Landroid/view/JankManagerHelper;->mJankLongStartTime:J

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Landroid/view/JankManagerHelper;->mJankLongStartTime:J

    cmp-long v7, v7, v11

    if-nez v7, :cond_1

    iput-wide v2, p0, Landroid/view/JankManagerHelper;->mJankLongStartTime:J

    :cond_1
    :goto_0
    sget v7, Landroid/view/JankManagerHelper;->mJunkTimes:I

    add-int/2addr v7, v9

    sput v7, Landroid/view/JankManagerHelper;->mJunkTimes:I

    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v6, Landroid/view/JankManagerHelper;->mJunkTimes:I

    iget v7, p0, Landroid/view/JankManagerHelper;->mJankLongValue:I

    if-le v6, v7, :cond_3

    sget-object v6, Landroid/view/JankManagerHelper;->mViewTitle:Ljava/lang/String;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Chor uploadMDM JANK_TYPE_TOTAL mViewTitle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/view/JankManagerHelper;->mViewTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "--- jank mJunkTimes = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Landroid/view/JankManagerHelper;->mJunkTimes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OnePlusJankManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/view/JankManagerHelper;->mPackageName:Ljava/lang/String;

    sget-object v7, Landroid/view/JankManagerHelper;->mViewTitle:Ljava/lang/String;

    const/4 v8, 0x2

    sget v11, Landroid/view/JankManagerHelper;->mJunkTimes:I

    invoke-virtual {p0, v6, v7, v8, v11}, Landroid/view/JankManagerHelper;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    sput v10, Landroid/view/JankManagerHelper;->mJunkTimes:I

    sput v10, Landroid/view/JankManagerHelper;->mJunkLevel:I

    iput-wide v2, p0, Landroid/view/JankManagerHelper;->mJankLongStartTime:J

    :cond_3
    sget v6, Landroid/view/JankManagerHelper;->mJunkLevel:I

    if-lez v6, :cond_4

    sget-object v6, Landroid/view/JankManagerHelper;->mViewTitle:Ljava/lang/String;

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Chor uploadMDM JANK_TYPE_ONCE mViewTitle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/view/JankManagerHelper;->mViewTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "--- jank level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Landroid/view/JankManagerHelper;->mJunkLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OnePlusJankManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/view/JankManagerHelper;->mPackageName:Ljava/lang/String;

    sget-object v7, Landroid/view/JankManagerHelper;->mViewTitle:Ljava/lang/String;

    sget v8, Landroid/view/JankManagerHelper;->mJunkLevel:I

    invoke-virtual {p0, v6, v7, v9, v8}, Landroid/view/JankManagerHelper;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    sput v10, Landroid/view/JankManagerHelper;->mJunkTimes:I

    sput v10, Landroid/view/JankManagerHelper;->mJunkLevel:I

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public setJunkLevel(J)V
    .locals 4

    iget-boolean v0, p0, Landroid/view/JankManagerHelper;->mJankManagerState:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/JankManagerHelper;->mWindowType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v2, 0x64

    if-ge v0, v2, :cond_2

    iget v0, p0, Landroid/view/JankManagerHelper;->mJankLevelHighValue:I

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x2

    sput v0, Landroid/view/JankManagerHelper;->mJunkLevel:I

    iget v2, p0, Landroid/view/JankManagerHelper;->mJankLevelTraceValue:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    sput v1, Landroid/view/JankManagerHelper;->mJunkLevel:I

    goto :goto_0

    :cond_0
    sput v0, Landroid/view/JankManagerHelper;->mJunkLevel:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/view/JankManagerHelper;->mJankLevelLowValue:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    sput v0, Landroid/view/JankManagerHelper;->mJunkLevel:I

    :cond_2
    :goto_0
    return-void
.end method

.method setViewTitle(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 6

    sget-object v0, Landroid/view/JankManagerHelper;->mViewTitle:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput v1, Landroid/view/JankManagerHelper;->mJunkTimes:I

    :cond_0
    sput-object p1, Landroid/view/JankManagerHelper;->mPackageName:Ljava/lang/String;

    sput-object p2, Landroid/view/JankManagerHelper;->mViewTitle:Ljava/lang/String;

    iput p5, p0, Landroid/view/JankManagerHelper;->mWindowType:I

    iget-wide v2, p0, Landroid/view/JankManagerHelper;->mJankLastDrawFrameTime:J

    sub-long v4, p3, v2

    long-to-float v0, v4

    const v4, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    iput-wide p3, p0, Landroid/view/JankManagerHelper;->mJankLastDrawFrameTime:J

    iput v1, p0, Landroid/view/JankManagerHelper;->mDoframeTimes:I

    iput v1, p0, Landroid/view/JankManagerHelper;->mDrawframeTimes:I

    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/view/JankManagerHelper;->mJankManagerState:Z

    if-eqz v0, :cond_6

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/view/JankManagerHelper;->mWindowType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/16 v3, 0x64

    if-ge v0, v3, :cond_6

    iget v0, p0, Landroid/view/JankManagerHelper;->mDoframeTimes:I

    iget v3, p0, Landroid/view/JankManagerHelper;->mDrawframeTimes:I

    sub-int/2addr v0, v3

    const/4 v3, 0x0

    iget v4, p0, Landroid/view/JankManagerHelper;->mJankLevelHighValue:I

    if-lt v0, v4, :cond_3

    iget v4, p0, Landroid/view/JankManagerHelper;->mJankLevelTraceValue:I

    if-lt v0, v4, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    iget v4, p0, Landroid/view/JankManagerHelper;->mJankLevelLowValue:I

    if-lt v0, v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    :goto_0
    sget-object v4, Landroid/view/JankManagerHelper;->mViewTitle:Ljava/lang/String;

    if-eqz v4, :cond_5

    if-lez v3, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Chor uploadMDM JANK_TYPE_NODRAW mViewTitle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/view/JankManagerHelper;->mViewTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--- jank level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OnePlusJankManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/view/JankManagerHelper;->mPackageName:Ljava/lang/String;

    sget-object v5, Landroid/view/JankManagerHelper;->mViewTitle:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/view/JankManagerHelper;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    iput-wide p3, p0, Landroid/view/JankManagerHelper;->mJankLastDrawFrameTime:J

    iput v1, p0, Landroid/view/JankManagerHelper;->mDoframeTimes:I

    iput v1, p0, Landroid/view/JankManagerHelper;->mDrawframeTimes:I

    goto :goto_1

    :cond_5
    iget v1, p0, Landroid/view/JankManagerHelper;->mDrawframeTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/JankManagerHelper;->mDrawframeTimes:I

    :cond_6
    :goto_1
    return-void
.end method
