.class public Landroid/view/OpDimScreenControllerInjector;
.super Ljava/lang/Object;
.source "OpDimScreenControllerInjector.java"


# static fields
.field private static final DEBUG_DIM_GESTURE:Z

.field private static final DOUBLE_TAP_MIN_TIME:I

.field private static final DOUBLE_TAP_SLOP:I

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final FINISH_HANDLED:I = 0x1

.field private static final GESTURE_MOTION_QUEUE_DELAY:I

.field private static final GESTURE_MOTION_QUEUE_DELAY_DIM:I

.field private static final IS_SUPPORT_DIM_MODE_GESTURE:Z

.field public static final MSG_DIM_MOTION_DOUBLE_TAP:I = 0xd11

.field public static final MSG_DIM_MOTION_DOUBLE_TAP_CANCEL:I = 0xd12

.field public static final MSG_DIM_MOTION_LONG_PRESS:I = 0xd10

.field public static final OEM_HOME_PACKAGE_NAME:Ljava/lang/String; = "net.oneplus.launcher"

.field public static final OEM_SYSTEMUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final SHORT_PERIOD:I

.field private static final TAG:Ljava/lang/String; = "OpDimScreenControllerInjector"

.field private static final TOUCH_SLOP:I = 0x32

.field public static mDimMotionEventLongPress:Z

.field public static mDimMotionEventQueued:Z


# instance fields
.field private mBackupEventListDimMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupEventListDimModeDT:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mDimStatus:I

.field private mDoubleTapInterval:J

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private mFirstDownTime:J

.field private mFirstUpX:F

.field private mFirstUpY:F

.field private mIsHomePackage:Z

.field private mIsKeyguard:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private mRawX:F

.field private mRawY:F

.field private mSecondDownTime:J

.field private mSecondDownX:F

.field private mSecondDownY:F

.field private mSecondUpTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    nop

    const-string/jumbo v0, "persist.gesture_button.long_click_timeout"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/OpDimScreenControllerInjector;->GESTURE_MOTION_QUEUE_DELAY:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xde

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Landroid/view/OpDimScreenControllerInjector;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    sget-boolean v1, Landroid/view/OpDimScreenControllerInjector;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v0

    sput v0, Landroid/view/OpDimScreenControllerInjector;->DOUBLE_TAP_SLOP:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/OpDimScreenControllerInjector;->SHORT_PERIOD:I

    sget v0, Landroid/view/OpDimScreenControllerInjector;->GESTURE_MOTION_QUEUE_DELAY:I

    sput v0, Landroid/view/OpDimScreenControllerInjector;->GESTURE_MOTION_QUEUE_DELAY_DIM:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/OpDimScreenControllerInjector;->DOUBLE_TAP_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Landroid/view/OpDimScreenControllerInjector;->DOUBLE_TAP_MIN_TIME:I

    sput-boolean v2, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventQueued:Z

    sput-boolean v2, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventLongPress:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/OpDimScreenControllerInjector;->mRawX:F

    iput v0, p0, Landroid/view/OpDimScreenControllerInjector;->mRawY:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/OpDimScreenControllerInjector;->mIsKeyguard:Z

    iput-boolean v1, p0, Landroid/view/OpDimScreenControllerInjector;->mIsHomePackage:Z

    iput v1, p0, Landroid/view/OpDimScreenControllerInjector;->mDimStatus:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimMode:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimModeDT:Ljava/util/Deque;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/OpDimScreenControllerInjector;->mFirstDownTime:J

    iput-wide v1, p0, Landroid/view/OpDimScreenControllerInjector;->mSecondDownTime:J

    iput-wide v1, p0, Landroid/view/OpDimScreenControllerInjector;->mSecondUpTime:J

    iput-wide v1, p0, Landroid/view/OpDimScreenControllerInjector;->mDoubleTapInterval:J

    iput v0, p0, Landroid/view/OpDimScreenControllerInjector;->mFirstUpX:F

    iput v0, p0, Landroid/view/OpDimScreenControllerInjector;->mFirstUpY:F

    iput v0, p0, Landroid/view/OpDimScreenControllerInjector;->mSecondDownX:F

    iput v0, p0, Landroid/view/OpDimScreenControllerInjector;->mSecondDownY:F

    const-string v0, "net.oneplus.launcher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/OpDimScreenControllerInjector;->mIsHomePackage:Z

    return-void
.end method


# virtual methods
.method public checkIsKeyguard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "StatusBar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OpDimScreenControllerInjector;->mIsKeyguard:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OpDimScreenControllerInjector;->mIsKeyguard:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public handleDoubleTap(Landroid/os/Message;Landroid/os/Handler;Landroid/view/View;)V
    .locals 7

    const-string v0, "OpDimScreenControllerInjector"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    :try_start_0
    sget-boolean v2, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    if-eqz v2, :cond_0

    const-string v2, "[DimScreen][MSG_DIM_MOTION_DOUBLE_TAP]"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventQueued:Z

    sput-boolean v2, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventLongPress:Z

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimModeDT:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v1, v3}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimModeDT:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xd11

    invoke-static {p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Landroid/view/OpDimScreenControllerInjector;->mDoubleTapInterval:J

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    iget-wide v5, p0, Landroid/view/OpDimScreenControllerInjector;->mDoubleTapInterval:J

    :cond_2
    invoke-virtual {p2, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mView does not exist, so discard the remaining points. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public handleDoubleTapCancel()V
    .locals 2

    sget-boolean v0, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDimScreenControllerInjector"

    const-string v1, "[DimScreen][MSG_DIM_MOTION_DOUBLE_TAP_CANCEL]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimModeDT:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    return-void
.end method

.method public handleLongPress(Landroid/os/Message;)V
    .locals 5

    const-string v0, "OpDimScreenControllerInjector"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    sput-boolean v2, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventLongPress:Z

    :try_start_0
    sget-boolean v2, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    if-eqz v2, :cond_0

    const-string v2, "[DimScreen][MSG_DIM_MOTION_LONG_PRESS]"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimMode:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimMode:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MotionEvent;

    invoke-virtual {v1, v4}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sput-boolean v2, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventQueued:Z

    iget-object v2, p0, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimMode:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimModeDT:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->clear()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mView does not exist, so discard the remaining points. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public monitor(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/os/Handler;Landroid/view/View;)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-boolean v0, v1, Landroid/view/OpDimScreenControllerInjector;->mIsKeyguard:Z

    const/4 v4, -0x1

    if-eqz v0, :cond_0

    return v4

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v5, 0x2

    const/16 v6, 0xd12

    const/16 v7, 0xd10

    const/4 v8, 0x0

    const-string v9, "OpDimScreenControllerInjector"

    const/4 v10, 0x1

    if-gt v0, v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v11, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimMode:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "device_is_dimming"

    invoke-static {v13, v14, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    iput v13, v1, Landroid/view/OpDimScreenControllerInjector;->mDimStatus:I

    iget v13, v1, Landroid/view/OpDimScreenControllerInjector;->mDimStatus:I

    if-ne v13, v10, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v1, Landroid/view/OpDimScreenControllerInjector;->mRawX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v1, Landroid/view/OpDimScreenControllerInjector;->mRawY:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v1, Landroid/view/OpDimScreenControllerInjector;->mLastFocusX:F

    iput v4, v1, Landroid/view/OpDimScreenControllerInjector;->mDownFocusX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v1, Landroid/view/OpDimScreenControllerInjector;->mLastFocusY:F

    iput v4, v1, Landroid/view/OpDimScreenControllerInjector;->mDownFocusY:F

    sput-boolean v10, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventQueued:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/view/OpDimScreenControllerInjector;->mFirstDownTime:J

    iget-object v4, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimMode:Ljava/util/ArrayList;

    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimModeDT:Ljava/util/Deque;

    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    sget-boolean v4, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DimScreen] Query dim status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DimScreen] 1st(DT down) @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Landroid/view/OpDimScreenControllerInjector;->mFirstDownTime:J

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v2, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    sget v5, Landroid/view/OpDimScreenControllerInjector;->GESTURE_MOTION_QUEUE_DELAY_DIM:I

    int-to-long v7, v5

    invoke-virtual {v2, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {v2, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    sget v6, Landroid/view/OpDimScreenControllerInjector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v10

    :cond_2
    sget-boolean v0, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventQueued:Z

    const/4 v11, 0x3

    if-eqz v0, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v1, Landroid/view/OpDimScreenControllerInjector;->mFirstUpX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v1, Landroid/view/OpDimScreenControllerInjector;->mFirstUpY:F

    if-eqz v12, :cond_c

    if-eq v12, v10, :cond_c

    if-eq v12, v5, :cond_3

    if-eq v12, v11, :cond_c

    const/4 v0, 0x5

    if-eq v12, v0, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v0, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimMode:Ljava/util/ArrayList;

    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iget v4, v1, Landroid/view/OpDimScreenControllerInjector;->mFirstUpX:F

    iget v5, v1, Landroid/view/OpDimScreenControllerInjector;->mDownFocusX:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v1, Landroid/view/OpDimScreenControllerInjector;->mFirstUpY:F

    iget v11, v1, Landroid/view/OpDimScreenControllerInjector;->mDownFocusY:F

    sub-float/2addr v5, v11

    float-to-int v5, v5

    mul-int v11, v4, v4

    mul-int v13, v5, v5

    const/16 v14, 0x9c4

    if-gt v11, v14, :cond_5

    if-le v13, v14, :cond_4

    goto :goto_0

    :cond_4
    move v15, v0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    iget v15, v1, Landroid/view/OpDimScreenControllerInjector;->mFirstUpX:F

    iput v15, v1, Landroid/view/OpDimScreenControllerInjector;->mLastFocusX:F

    iget v15, v1, Landroid/view/OpDimScreenControllerInjector;->mFirstUpY:F

    iput v15, v1, Landroid/view/OpDimScreenControllerInjector;->mLastFocusY:F

    move v15, v0

    :goto_1
    if-nez v15, :cond_6

    sget-boolean v0, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    if-eqz v0, :cond_b

    const-string v0, "[DimScreen] Tiny swipe : ignore it"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    sget-boolean v0, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    if-eqz v0, :cond_7

    const-string v0, "[DimScreen] !Tiny swipe : handle it"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    move v0, v8

    :goto_2
    :try_start_0
    iget-object v6, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimMode:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_a

    iget-object v6, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimMode:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/MotionEvent;

    invoke-virtual {v3, v6}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    sput-boolean v8, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventQueued:Z

    sput-boolean v8, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventLongPress:Z

    iget-object v0, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimModeDT:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mView does not exist, so discard the remaining points. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    return v10

    :cond_c
    if-ne v12, v10, :cond_e

    sget-boolean v0, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    if-eqz v0, :cond_d

    const-string v0, "[DimScreen] 1st(DT up)"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimModeDT:Ljava/util/Deque;

    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    sput-boolean v8, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventQueued:Z

    sput-boolean v8, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventLongPress:Z

    iget-object v0, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return v10

    :cond_10
    :goto_4
    iget-object v0, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimModeDT:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, v1, Landroid/view/OpDimScreenControllerInjector;->mSecondDownX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, v1, Landroid/view/OpDimScreenControllerInjector;->mSecondDownY:F

    const/4 v5, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    if-eqz v0, :cond_13

    if-eq v0, v10, :cond_13

    if-eq v0, v11, :cond_11

    goto/16 :goto_6

    :cond_11
    sget-boolean v4, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    if-eqz v4, :cond_12

    const-string v4, "[DimScreen] do double tap cancel"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-static {v2, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v10

    :cond_13
    if-nez v0, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/view/OpDimScreenControllerInjector;->mSecondDownTime:J

    iget-wide v6, v1, Landroid/view/OpDimScreenControllerInjector;->mSecondDownTime:J

    move/from16 v16, v12

    iget-wide v11, v1, Landroid/view/OpDimScreenControllerInjector;->mFirstDownTime:J

    sub-long/2addr v6, v11

    iput-wide v6, v1, Landroid/view/OpDimScreenControllerInjector;->mDoubleTapInterval:J

    iget v6, v1, Landroid/view/OpDimScreenControllerInjector;->mSecondDownX:F

    iget v7, v1, Landroid/view/OpDimScreenControllerInjector;->mDownFocusX:F

    sub-float/2addr v6, v7

    float-to-int v5, v6

    iget v6, v1, Landroid/view/OpDimScreenControllerInjector;->mSecondDownY:F

    iget v7, v1, Landroid/view/OpDimScreenControllerInjector;->mDownFocusY:F

    sub-float/2addr v6, v7

    float-to-int v12, v6

    sget-boolean v6, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    if-eqz v6, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DimScreen] 2nd(DT down) @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Landroid/view/OpDimScreenControllerInjector;->mSecondDownTime:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[DimScreen] Home : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Landroid/view/OpDimScreenControllerInjector;->mIsHomePackage:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", interval : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Landroid/view/OpDimScreenControllerInjector;->mDoubleTapInterval:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-wide v10, v1, Landroid/view/OpDimScreenControllerInjector;->mFirstDownTime:J

    cmp-long v6, v10, v13

    if-nez v6, :cond_17

    sget-boolean v6, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    if-eqz v6, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DimScreen] 2nd DT equals to 1st DT @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Landroid/view/OpDimScreenControllerInjector;->mSecondDownTime:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", -> ignore it"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    sput-boolean v8, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventQueued:Z

    sput-boolean v8, Landroid/view/OpDimScreenControllerInjector;->mDimMotionEventLongPress:Z

    iget-object v6, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimMode:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimModeDT:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->clear()V

    return v4

    :cond_16
    move/from16 v16, v12

    :cond_17
    iget-object v4, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimModeDT:Ljava/util/Deque;

    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    if-nez v0, :cond_18

    iget-boolean v4, v1, Landroid/view/OpDimScreenControllerInjector;->mIsHomePackage:Z

    if-nez v4, :cond_19

    :cond_18
    const/4 v4, 0x1

    if-ne v0, v4, :cond_20

    iget-boolean v4, v1, Landroid/view/OpDimScreenControllerInjector;->mIsHomePackage:Z

    if-nez v4, :cond_20

    :cond_19
    iget-wide v10, v1, Landroid/view/OpDimScreenControllerInjector;->mSecondDownTime:J

    cmp-long v4, v10, v13

    if-eqz v4, :cond_20

    iget-wide v10, v1, Landroid/view/OpDimScreenControllerInjector;->mFirstDownTime:J

    cmp-long v4, v10, v13

    if-eqz v4, :cond_20

    sget v4, Landroid/view/OpDimScreenControllerInjector;->DOUBLE_TAP_SLOP:I

    if-ge v5, v4, :cond_20

    if-ge v12, v4, :cond_20

    iget-wide v10, v1, Landroid/view/OpDimScreenControllerInjector;->mDoubleTapInterval:J

    sget v4, Landroid/view/OpDimScreenControllerInjector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v7, v4

    cmp-long v4, v10, v7

    if-gez v4, :cond_1e

    sget v4, Landroid/view/OpDimScreenControllerInjector;->DOUBLE_TAP_MIN_TIME:I

    int-to-long v7, v4

    cmp-long v4, v10, v7

    if-lez v4, :cond_1e

    const/16 v4, 0xd10

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1a
    const/16 v4, 0xd12

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1b
    const/16 v4, 0xd11

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1c
    sget-boolean v7, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    if-eqz v7, :cond_1d

    const-string v7, "[DimScreen] creat new double tap"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_1e
    sget-boolean v4, Landroid/view/OpDimScreenControllerInjector;->DEBUG_DIM_GESTURE:Z

    if-eqz v4, :cond_1f

    const-string v4, "[DimScreen] double tap is not happening"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v4, v1, Landroid/view/OpDimScreenControllerInjector;->mBackupEventListDimModeDT:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->clear()V

    :cond_20
    :goto_5
    const/4 v4, 0x1

    return v4

    :cond_21
    :goto_6
    return v4
.end method
