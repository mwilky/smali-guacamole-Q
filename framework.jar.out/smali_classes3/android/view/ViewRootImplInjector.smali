.class public Landroid/view/ViewRootImplInjector;
.super Ljava/lang/Object;
.source "ViewRootImplInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImplInjector$LongshotRunnable;
    }
.end annotation


# static fields
.field private static final BOTTOM_SIDE:I = 0x2

.field public static final DEBUG_GESTURE:Z

.field public static final DEBUG_GESTURE_BUTTON:Z

.field public static final DEBUG_ONEPLUS:Z

.field private static final GBT_LOG_ENABLE:Z

.field public static final GBT_TAG:Ljava/lang/String; = "OpGlobalBlackTheme"

.field private static final GESTURE_KEY_HORIZONTAL_DISTANCE_THRESHOLD:I

.field private static final GESTURE_KEY_LONG_CLICK_MOVE:I

.field private static final GESTURE_MOTION_QUEUE_DELAY:I

.field private static final GESTURE_MOTION_SLOW_MOVE_TIME:I = 0x190

.field public static final IS_GESTURE_BUTTON_ENABLED:Z

.field public static final IS_SUPPORT_CAMERA_NOTCH:Z

.field private static final LEFT_SIDE:I = 0x0

.field public static final MSG_GESTURE_CONFIG_CHECK:I = 0x15bf

.field public static final MSG_GESTURE_MOTION_DOWN:I = 0x15be

.field static final MULTI_TOUCH_GAME_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_SIDE:I = -0x1

.field private static final OEM_HOME_PACKAGE_NAME:Ljava/lang/String; = "net.oneplus.launcher"

.field private static final OEM_SYSTEMUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final ONEPLUS_SERVICE_CREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/os/IOnePlusService;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPSERVICE:Ljava/lang/String; = "opservice"

.field public static final PORTRAIT_NON_DETECT_SCALE:F

.field private static final RIGHT_SIDE:I = 0x1

.field private static final SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

.field private static final SIDE_GESTURE_EDGE_MOVE_SCALE:F

.field private static final SIDE_GESTURE_EDGE_SCALE:F

.field private static final TAG:Ljava/lang/String; = "ViewRootImplInjector"

.field private static final THREE_FINGER_TAP_INTERVAL:I = 0x1f4

.field private static mCameraNotchHeight:I

.field public static mLongshotUtil:Lcom/oneplus/longshot/LongshotUtil;

.field private static mOnePlusService:Lcom/oneplus/os/IOnePlusService;

.field private static sHWWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpViewRootImpl:Landroid/view/IOpViewRootImpl;


# instance fields
.field mAssistamtGestureWidthLand:I

.field mAssistamtGestureWidthPort:I

.field private mBackupEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckForGestureButton:Z

.field mContext:Landroid/content/Context;

.field private mEdgeSwipeStartThreshold:I

.field private mGameShakeConfig:Ljava/lang/String;

.field private mGestureButtonActive:Z

.field public mGestureButtonEnabled:Z

.field private mGestureButtonHeight:I

.field private mGestureButtonZone:I

.field private mGestureKeyDistanceThreshold:I

.field mHomeGestureWidthLand:I

.field mHomeGestureWidthPort:I

.field private mIsGestureScreenshotEnabled:Z

.field private mIsHomeGestureTutorial:Z

.field private mIsHomePackage:Z

.field private mIsIgnoreCameraNotch:Z

.field private mIsKeyguard:Z

.field private mLongshotStartRunnable:Landroid/view/ViewRootImplInjector$LongshotRunnable;

.field private mLongshotStopRunnable:Landroid/view/ViewRootImplInjector$LongshotRunnable;

.field private mOneThirdPart:I

.field private mQueueMotionConsumed:Z

.field private mRawX:F

.field private mRawY:F

.field mReachDistance:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSideGestureButtonEnabled:Z

.field private mSideGestureKeyAnimThreshold:I

.field mSwipeSide:I

.field mSwipeTimeoSlow:Z

.field mSystemGestureExclusionRegion:Landroid/graphics/Region;

.field mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.tencent.tmgp.sgame"

    const-string v1, "com.tencent.tmgp.speedmobile"

    const-string v2, "com.tencent.tmgp.pubgmhd"

    const-string v3, "com.netease.onmyoji"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/view/ViewRootImplInjector;->MULTI_TOUCH_GAME_LIST:Ljava/util/List;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/view/ViewRootImplInjector;->DEBUG_ONEPLUS:Z

    sget-boolean v0, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "persist.gesture_button.debug"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE:Z

    nop

    const-string/jumbo v0, "persist.gesture_button.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImplInjector;->IS_GESTURE_BUTTON_ENABLED:Z

    new-array v0, v1, [I

    const/16 v3, 0x40

    aput v3, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImplInjector;->IS_SUPPORT_CAMERA_NOTCH:Z

    sget-boolean v0, Landroid/view/ViewRootImplInjector;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/view/ViewRootImplInjector;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE_BUTTON:Z

    const/16 v0, 0xc8

    const-string/jumbo v3, "persist.gesture_button.long_click_timeout"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/ViewRootImplInjector;->GESTURE_MOTION_QUEUE_DELAY:I

    const/16 v0, 0x32

    const-string/jumbo v3, "persist.gesture_button.long_click_move"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/ViewRootImplInjector;->GESTURE_KEY_LONG_CLICK_MOVE:I

    const/16 v0, 0x64

    const-string/jumbo v3, "persist.sys.gesture_button.horizontal_dis"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/ViewRootImplInjector;->GESTURE_KEY_HORIZONTAL_DISTANCE_THRESHOLD:I

    nop

    new-array v0, v1, [I

    aput v2, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    const-string/jumbo v1, "persist.portrait_non.detect.scale"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    sput v0, Landroid/view/ViewRootImplInjector;->PORTRAIT_NON_DETECT_SCALE:F

    const/16 v0, 0x50

    sput v0, Landroid/view/ViewRootImplInjector;->mCameraNotchHeight:I

    nop

    const/16 v0, 0x2d

    const-string/jumbo v1, "persist.gesture_button.side.edge.scale"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x3a83126f    # 0.001f

    mul-float/2addr v1, v3

    sput v1, Landroid/view/ViewRootImplInjector;->SIDE_GESTURE_EDGE_SCALE:F

    nop

    const-string/jumbo v1, "persist.gesture_button.side.move.scale"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sput v0, Landroid/view/ViewRootImplInjector;->SIDE_GESTURE_EDGE_MOVE_SCALE:F

    const/16 v0, 0x12c

    const-string/jumbo v1, "persist.gesture_button.side.hor.scale"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    sput v0, Landroid/view/ViewRootImplInjector;->SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

    new-instance v0, Landroid/view/ViewRootImplInjector$1;

    invoke-direct {v0}, Landroid/view/ViewRootImplInjector$1;-><init>()V

    sput-object v0, Landroid/view/ViewRootImplInjector;->ONEPLUS_SERVICE_CREATOR:Landroid/util/Singleton;

    const-string/jumbo v0, "persist.oneplus.debug.gbtlog"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImplInjector;->GBT_LOG_ENABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImplInjector;->mSystemGestureExclusionRegion:Landroid/graphics/Region;

    nop

    const-string/jumbo v0, "persist.gesture_button.dis"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImplInjector;->mGestureKeyDistanceThreshold:I

    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewRootImplInjector;->mGestureButtonHeight:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImplInjector;->mGestureButtonZone:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImplInjector;->mScreenHeight:I

    iput v1, p0, Landroid/view/ViewRootImplInjector;->mScreenWidth:I

    iput v1, p0, Landroid/view/ViewRootImplInjector;->mOneThirdPart:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRootImplInjector;->mQueueMotionConsumed:Z

    iput-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mCheckForGestureButton:Z

    iput-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mGestureButtonActive:Z

    iput-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mGestureButtonEnabled:Z

    iput-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mIsHomePackage:Z

    iput-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mIsHomeGestureTutorial:Z

    iput-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mIsKeyguard:Z

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewRootImplInjector;->mRawX:F

    iput v2, p0, Landroid/view/ViewRootImplInjector;->mRawY:F

    iput-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mSideGestureButtonEnabled:Z

    iput-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mIsIgnoreCameraNotch:Z

    iput v1, p0, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    iput-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mSwipeTimeoSlow:Z

    iput-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mReachDistance:Z

    sget v0, Landroid/view/ViewRootImplInjector;->SIDE_GESTURE_EDGE_SCALE:F

    const/high16 v1, 0x44870000    # 1080.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/ViewRootImplInjector;->mEdgeSwipeStartThreshold:I

    sget v0, Landroid/view/ViewRootImplInjector;->SIDE_GESTURE_EDGE_MOVE_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/view/ViewRootImplInjector;->mSideGestureKeyAnimThreshold:I

    new-instance v0, Landroid/view/ViewRootImplInjector$2;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImplInjector$2;-><init>(Landroid/view/ViewRootImplInjector;)V

    iput-object v0, p0, Landroid/view/ViewRootImplInjector;->mLongshotStartRunnable:Landroid/view/ViewRootImplInjector$LongshotRunnable;

    new-instance v0, Landroid/view/ViewRootImplInjector$3;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImplInjector$3;-><init>(Landroid/view/ViewRootImplInjector;)V

    iput-object v0, p0, Landroid/view/ViewRootImplInjector;->mLongshotStopRunnable:Landroid/view/ViewRootImplInjector$LongshotRunnable;

    iput-object p1, p0, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/view/ViewRootImplInjector;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSizeForSystem(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImplInjector;->mScreenHeight:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImplInjector;->mScreenWidth:I

    invoke-static {}, Landroid/view/ViewRootImplInjector;->initInstance()V

    sget-object v1, Landroid/view/ViewRootImplInjector;->sOpViewRootImpl:Landroid/view/IOpViewRootImpl;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/IOpViewRootImpl;->init()V

    :cond_0
    sget-boolean v1, Landroid/view/ViewRootImplInjector;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/view/ViewRootImplInjector;->mScreenWidth:I

    int-to-float v2, v1

    sget v3, Landroid/view/ViewRootImplInjector;->SIDE_GESTURE_EDGE_SCALE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewRootImplInjector;->mEdgeSwipeStartThreshold:I

    int-to-float v2, v1

    sget v3, Landroid/view/ViewRootImplInjector;->SIDE_GESTURE_EDGE_MOVE_SCALE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewRootImplInjector;->mSideGestureKeyAnimThreshold:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/view/ViewRootImplInjector;->mOneThirdPart:I

    sget-boolean v1, Landroid/view/OpScreenCompatViewInjector;->sIsDisplayCompatApp:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/ViewRootImplInjector;->mGestureKeyDistanceThreshold:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ViewRootImplInjector;->mGestureKeyDistanceThreshold:I

    :cond_1
    iget-object v1, p1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    const-string v2, "net.oneplus.launcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ViewRootImplInjector;->mIsHomePackage:Z

    iget-object v1, p0, Landroid/view/ViewRootImplInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/view/ViewRootImplInjector;->mCameraNotchHeight:I

    invoke-virtual {p0}, Landroid/view/ViewRootImplInjector;->handleGestureConfigCheck()V

    sget-boolean v1, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GESTURE_BUTTON] mBasePackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewRootImplInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static getDefaultOnePlusService()Lcom/oneplus/os/IOnePlusService;
    .locals 1

    sget-object v0, Landroid/view/ViewRootImplInjector;->ONEPLUS_SERVICE_CREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusService;

    return-object v0
.end method

.method public static getGameShakeConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/view/ViewRootImplInjector;->getOnePlusService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/oneplus/os/IOnePlusService;->getGameShakeConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getNightMode(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    return v0
.end method

.method private static getOnePlusService()Lcom/oneplus/os/IOnePlusService;
    .locals 1

    sget-object v0, Landroid/view/ViewRootImplInjector;->mOnePlusService:Lcom/oneplus/os/IOnePlusService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/ViewRootImplInjector;->getDefaultOnePlusService()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    sput-object v0, Landroid/view/ViewRootImplInjector;->mOnePlusService:Lcom/oneplus/os/IOnePlusService;

    sget-object v0, Landroid/view/ViewRootImplInjector;->mOnePlusService:Lcom/oneplus/os/IOnePlusService;

    return-object v0
.end method

.method private static initForceHWListForCurApplication()V
    .locals 2

    sget-object v0, Landroid/view/ViewRootImplInjector;->sHWWhiteList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImplInjector;->sHWWhiteList:Ljava/util/ArrayList;

    sget-object v0, Landroid/view/ViewRootImplInjector;->sHWWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-object v0, Landroid/view/ViewRootImplInjector;->sOpViewRootImpl:Landroid/view/IOpViewRootImpl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_VIEW_ROOT_IMPL:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IOpViewRootImpl;

    sput-object v0, Landroid/view/ViewRootImplInjector;->sOpViewRootImpl:Landroid/view/IOpViewRootImpl;

    :cond_0
    return-void
.end method

.method private static isClassMatched(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static isInWhiteList(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Landroid/view/ViewRootImplInjector;->sHWWhiteList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isOpForceDarkConfig(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static opForceDarkIfNecessary(Landroid/content/Context;Z)Z
    .locals 12

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/view/ViewRootImplInjector;->worldWideDarkEnabled(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {p0}, Landroid/view/ViewRootImplInjector;->isOpForceDarkConfig(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "op_force_dark_mode"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-static {p0}, Landroid/view/ViewRootImplInjector;->getNightMode(Landroid/content/Context;)I

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    const/16 v8, 0x117

    invoke-virtual {v2, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    const/16 v9, 0x116

    invoke-virtual {v2, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v4, :cond_2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    move v10, v6

    goto :goto_2

    :cond_2
    move v10, v5

    :goto_2
    if-nez v10, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v5, v6

    :cond_4
    move v0, v5

    sget-boolean v5, Landroid/view/ViewRootImplInjector;->GBT_LOG_ENABLE:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>>\nPkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n[AOSP Policy] Enable ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "\nDetails: useAutoDark = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", Configuration NightMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", App Theme AllowForceDark = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", App Theme using Light Theme = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", SmarkDark Toggle On = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "\nOpUser Enable ForceDark = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", OpConfiguration ForceFlag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", Op Force WorldWide Dark = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "\n[OnePlus Policy] Enable ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "\n<<<<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "OpGlobalBlackTheme"

    invoke-static {v11, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Landroid/view/ViewRootImplInjector;->initForceHWListForCurApplication()V

    return v0
.end method

.method public static rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Region;"
        }
    .end annotation

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static worldWideDarkEnabled(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "op_force_dark_entire_world"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method adjuestEdgeThreshold(III)I
    .locals 10

    iget v0, p0, Landroid/view/ViewRootImplInjector;->mEdgeSwipeStartThreshold:I

    sget-boolean v1, Landroid/view/ViewRootImplInjector;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/view/ViewRootImplInjector;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ge p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    const-string v4, "ViewRootImplInjector"

    if-ne p3, v2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    const/4 v2, 0x3

    if-ne p3, v2, :cond_5

    if-nez v1, :cond_5

    :cond_2
    iget-boolean v2, p0, Landroid/view/ViewRootImplInjector;->mIsIgnoreCameraNotch:Z

    if-eqz v2, :cond_3

    sget v2, Landroid/view/ViewRootImplInjector;->mCameraNotchHeight:I

    iget v5, p0, Landroid/view/ViewRootImplInjector;->mEdgeSwipeStartThreshold:I

    add-int/2addr v2, v5

    move v0, v2

    goto :goto_1

    :cond_3
    :try_start_0
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v5, p0, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v5, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewRootImplInjector;->rectsToRegion(Ljava/util/List;)Landroid/graphics/Region;

    move-result-object v5

    move-object v3, v5

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sget v6, Landroid/view/ViewRootImplInjector;->mCameraNotchHeight:I

    add-int/2addr v5, v6

    if-lt p2, v5, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sget v6, Landroid/view/ViewRootImplInjector;->mCameraNotchHeight:I

    sub-int/2addr v5, v6

    if-gt p2, v5, :cond_4

    sget v5, Landroid/view/ViewRootImplInjector;->mCameraNotchHeight:I

    iget v6, p0, Landroid/view/ViewRootImplInjector;->mEdgeSwipeStartThreshold:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v6, v6

    const-wide v8, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int v0, v5, v6

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjuestEdgeThreshold fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    sget-boolean v2, Landroid/view/ViewRootImplInjector;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enlarge threshold for y="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " hideNotch="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Landroid/view/ViewRootImplInjector;->mIsIgnoreCameraNotch:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " cutOutBounds="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Threshold="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v0
.end method

.method public checkKeyguardAndConfig(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/view/ViewRootImplInjector;->getGameShakeConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImplInjector;->mGameShakeConfig:Ljava/lang/String;

    sget-boolean v0, Landroid/view/ViewRootImplInjector;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "[GESTURE_BUTTON] tag = "

    const-string v2, "ViewRootImplInjector"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "StatusBar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Landroid/view/ViewRootImplInjector;->mIsKeyguard:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mIsKeyguard:Z

    :cond_1
    :goto_0
    sget-boolean v0, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mIsHomePackage:Z

    if-eqz v0, :cond_3

    const-string v0, "ViewRootImpl[GestureTutorialActivity]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Landroid/view/ViewRootImplInjector;->mIsHomeGestureTutorial:Z

    sget-boolean v0, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v0, Landroid/view/ViewRootImplInjector;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x15bf

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void
.end method

.method public getHomeGestureRegion(Z)Landroid/graphics/Region;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/graphics/Region;

    iget v2, p0, Landroid/view/ViewRootImplInjector;->mScreenHeight:I

    iget v3, p0, Landroid/view/ViewRootImplInjector;->mGestureButtonHeight:I

    sub-int v3, v2, v3

    iget v4, p0, Landroid/view/ViewRootImplInjector;->mScreenWidth:I

    invoke-direct {v1, v0, v3, v4, v2}, Landroid/graphics/Region;-><init>(IIII)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Region;

    iget v2, p0, Landroid/view/ViewRootImplInjector;->mScreenWidth:I

    iget v3, p0, Landroid/view/ViewRootImplInjector;->mGestureButtonHeight:I

    sub-int v3, v2, v3

    iget v4, p0, Landroid/view/ViewRootImplInjector;->mScreenHeight:I

    invoke-direct {v1, v0, v3, v4, v2}, Landroid/graphics/Region;-><init>(IIII)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public handleGestureConfigCheck()V
    .locals 6

    iget-object v0, p0, Landroid/view/ViewRootImplInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImplInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "navigation_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Landroid/view/ViewRootImplInjector;->mGestureButtonEnabled:Z

    iget-boolean v3, p0, Landroid/view/ViewRootImplInjector;->mGestureButtonEnabled:Z

    if-eqz v3, :cond_3

    const v3, 0x505002e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/view/ViewRootImplInjector;->mGestureButtonHeight:I

    const-string v3, "op_gesture_button_side_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    :cond_1
    iput-boolean v2, p0, Landroid/view/ViewRootImplInjector;->mSideGestureButtonEnabled:Z

    const v2, 0x5050030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImplInjector;->mHomeGestureWidthPort:I

    const v2, 0x505002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImplInjector;->mHomeGestureWidthLand:I

    const v2, 0x505002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImplInjector;->mAssistamtGestureWidthPort:I

    const v2, 0x505002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImplInjector;->mAssistamtGestureWidthLand:I

    sget-boolean v2, Landroid/view/ViewRootImplInjector;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v2, :cond_2

    iput-boolean v4, p0, Landroid/view/ViewRootImplInjector;->mIsIgnoreCameraNotch:Z

    :cond_2
    sget-boolean v2, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GESTURE_BUTTON] mGestureButtonHeight= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/ViewRootImplInjector;->mGestureButtonHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mSideGestureButtonEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/view/ViewRootImplInjector;->mSideGestureButtonEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHomeGestureWidthPort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/ViewRootImplInjector;->mHomeGestureWidthPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mHomeGestureWidthLand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/ViewRootImplInjector;->mHomeGestureWidthLand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAssistamtGestureWidthPort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/ViewRootImplInjector;->mAssistamtGestureWidthPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAssistamtGestureWidthLand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/ViewRootImplInjector;->mAssistamtGestureWidthLand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ViewRootImplInjector"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public handleGestureMotionDown(Landroid/view/View;)V
    .locals 6

    const-string v0, "ViewRootImplInjector"

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {p1, v3}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    sget-boolean v4, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GESTURE_BUTTON] MSG_GESTURE_MOTION_DOWN 1 dispatch mBackupEventList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", handled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
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
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImplInjector;->mQueueMotionConsumed:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImplInjector;->mCheckForGestureButton:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImplInjector;->mGestureButtonActive:Z

    return-void
.end method

.method public longshotStart(Landroid/os/Handler;Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "longshotStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLongshotUtil:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/view/ViewRootImplInjector;->mLongshotUtil:Lcom/oneplus/longshot/LongshotUtil;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewRootImplInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ViewRootImplInjector;->mLongshotStartRunnable:Landroid/view/ViewRootImplInjector$LongshotRunnable;

    invoke-interface {v0, p2}, Landroid/view/ViewRootImplInjector$LongshotRunnable;->setView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewRootImplInjector;->mLongshotStartRunnable:Landroid/view/ViewRootImplInjector$LongshotRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public longshotStop(Landroid/os/Handler;Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "longshotStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLongshotUtil:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/view/ViewRootImplInjector;->mLongshotUtil:Lcom/oneplus/longshot/LongshotUtil;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewRootImplInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ViewRootImplInjector;->mLongshotStopRunnable:Landroid/view/ViewRootImplInjector$LongshotRunnable;

    invoke-interface {v0, p2}, Landroid/view/ViewRootImplInjector$LongshotRunnable;->setView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/ViewRootImplInjector;->mLongshotStopRunnable:Landroid/view/ViewRootImplInjector$LongshotRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method opForceHWIfNecessary(Landroid/view/View;I)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    return p2

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    return p2

    :cond_1
    invoke-static {p1}, Landroid/view/ViewRootImplInjector;->isClassMatched(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    return p2

    :cond_2
    invoke-static {v0}, Landroid/view/ViewRootImplInjector;->isInWhiteList(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    return p2

    :cond_3
    sget-boolean v1, Landroid/view/ViewRootImplInjector;->GBT_LOG_ENABLE:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force HW Rendered. Pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Cls = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpGlobalBlackTheme"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x2

    return v1
.end method

.method public processGameShakeMotionEvent(Landroid/view/MotionEvent;Z)Landroid/view/MotionEvent;
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImplInjector;->mGameShakeConfig:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/ViewRootImplInjector;->initInstance()V

    sget-object v0, Landroid/view/ViewRootImplInjector;->sOpViewRootImpl:Landroid/view/IOpViewRootImpl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImplInjector;->mGameShakeConfig:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Landroid/view/IOpViewRootImpl;->processGameShakeMotionEvent(Landroid/view/MotionEvent;ZLjava/lang/String;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public processGestureEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v1, p0

    sget-boolean v0, Landroid/view/ViewRootImplInjector;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_46

    iget-boolean v0, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonEnabled:Z

    if-eqz v0, :cond_46

    iget-boolean v0, v1, Landroid/view/ViewRootImplInjector;->mIsHomeGestureTutorial:Z

    if-nez v0, :cond_46

    iget-boolean v0, v1, Landroid/view/ViewRootImplInjector;->mIsKeyguard:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Landroid/view/ViewRootImplInjector;->mSideGestureButtonEnabled:Z

    if-eqz v0, :cond_46

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_46

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v8, "ViewRootImplInjector"

    if-eqz v5, :cond_3

    iget-boolean v9, v1, Landroid/view/ViewRootImplInjector;->mCheckForGestureButton:Z

    if-nez v9, :cond_3

    iget-boolean v9, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonActive:Z

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    move v9, v6

    move v6, v0

    goto/16 :goto_3

    :cond_3
    :goto_0
    iget-object v9, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v4, :cond_5

    if-ne v0, v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move v9, v4

    :goto_2
    move v6, v9

    sget-boolean v9, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GESTURE_BUTTON] View: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GESTURE_BUTTON] Motion: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v9, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GESTURE_BUTTON] raw: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GESTURE_BUTTON] Rotation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GESTURE_BUTTON] Zone: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonZone:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GESTURE_BUTTON] mCheckForGestureButton: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Landroid/view/ViewRootImplInjector;->mCheckForGestureButton:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v9, v6

    move v6, v0

    :goto_3
    const/16 v0, 0x15be

    const/4 v10, 0x2

    if-eqz v5, :cond_2e

    const-string v11, ", handled="

    const-string v12, "mView does not exist, so discard the remaining points. "

    if-eq v5, v4, :cond_27

    if-eq v5, v10, :cond_8

    if-eq v5, v7, :cond_27

    if-eq v5, v3, :cond_27

    goto/16 :goto_19

    :cond_8
    iget-boolean v3, v1, Landroid/view/ViewRootImplInjector;->mCheckForGestureButton:Z

    if-eqz v3, :cond_26

    iget-object v3, v1, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x190

    cmp-long v13, v13, v15

    if-lez v13, :cond_9

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mSwipeTimeoSlow:Z

    :cond_9
    iget v13, v1, Landroid/view/ViewRootImplInjector;->mGestureKeyDistanceThreshold:I

    sget v14, Landroid/view/ViewRootImplInjector;->GESTURE_KEY_HORIZONTAL_DISTANCE_THRESHOLD:I

    iget-boolean v15, v1, Landroid/view/ViewRootImplInjector;->mSideGestureButtonEnabled:Z

    if-eqz v15, :cond_a

    iget v15, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    if-eq v15, v10, :cond_a

    iget v15, v1, Landroid/view/ViewRootImplInjector;->mSideGestureKeyAnimThreshold:I

    int-to-float v15, v15

    sget v16, Landroid/view/ViewRootImplInjector;->SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

    mul-float v15, v15, v16

    float-to-int v14, v15

    :cond_a
    if-eqz v6, :cond_12

    if-ne v6, v10, :cond_b

    goto/16 :goto_4

    :cond_b
    if-eq v6, v4, :cond_c

    if-ne v6, v7, :cond_17

    :cond_c
    iget-boolean v7, v1, Landroid/view/ViewRootImplInjector;->mSideGestureButtonEnabled:Z

    if-eqz v7, :cond_e

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    if-ne v7, v10, :cond_e

    sget v13, Landroid/view/ViewRootImplInjector;->GESTURE_KEY_LONG_CLICK_MOVE:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v10, v1, Landroid/view/ViewRootImplInjector;->mRawY:F

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v10, v13

    cmpl-float v7, v7, v10

    if-ltz v7, :cond_d

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mReachDistance:Z

    goto/16 :goto_5

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v10, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v10, v14

    cmpl-float v7, v7, v10

    if-lez v7, :cond_17

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mSwipeTimeoSlow:Z

    goto/16 :goto_5

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v15, v1, Landroid/view/ViewRootImplInjector;->mOneThirdPart:I

    int-to-float v15, v15

    cmpl-float v7, v7, v15

    if-lez v7, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v15, v1, Landroid/view/ViewRootImplInjector;->mOneThirdPart:I

    mul-int/2addr v15, v10

    int-to-float v15, v15

    cmpg-float v7, v7, v15

    if-gez v7, :cond_f

    sget v13, Landroid/view/ViewRootImplInjector;->GESTURE_KEY_LONG_CLICK_MOVE:I

    :cond_f
    iget-boolean v7, v1, Landroid/view/ViewRootImplInjector;->mSideGestureButtonEnabled:Z

    if-eqz v7, :cond_10

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    if-eq v7, v10, :cond_10

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mSideGestureKeyAnimThreshold:I

    move v13, v7

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v10, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v10, v13

    cmpl-float v7, v7, v10

    if-ltz v7, :cond_11

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mReachDistance:Z

    goto/16 :goto_5

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v10, v1, Landroid/view/ViewRootImplInjector;->mRawY:F

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v10, v14

    cmpl-float v7, v7, v10

    if-lez v7, :cond_17

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mSwipeTimeoSlow:Z

    goto :goto_5

    :cond_12
    :goto_4
    iget-boolean v7, v1, Landroid/view/ViewRootImplInjector;->mSideGestureButtonEnabled:Z

    if-eqz v7, :cond_14

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    if-eq v7, v10, :cond_14

    iget v13, v1, Landroid/view/ViewRootImplInjector;->mSideGestureKeyAnimThreshold:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v10, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v10, v13

    cmpl-float v7, v7, v10

    if-ltz v7, :cond_13

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mReachDistance:Z

    goto :goto_5

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v10, v1, Landroid/view/ViewRootImplInjector;->mRawY:F

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v10, v14

    cmpl-float v7, v7, v10

    if-lez v7, :cond_17

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mSwipeTimeoSlow:Z

    goto :goto_5

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v15, v1, Landroid/view/ViewRootImplInjector;->mOneThirdPart:I

    int-to-float v15, v15

    cmpl-float v7, v7, v15

    if-lez v7, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v15, v1, Landroid/view/ViewRootImplInjector;->mOneThirdPart:I

    mul-int/2addr v15, v10

    int-to-float v10, v15

    cmpg-float v7, v7, v10

    if-gez v7, :cond_15

    sget v13, Landroid/view/ViewRootImplInjector;->GESTURE_KEY_LONG_CLICK_MOVE:I

    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v10, v1, Landroid/view/ViewRootImplInjector;->mRawY:F

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v10, v13

    cmpl-float v7, v7, v10

    if-ltz v7, :cond_16

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mReachDistance:Z

    goto :goto_5

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v10, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v10, v14

    cmpl-float v7, v7, v10

    if-lez v7, :cond_17

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mSwipeTimeoSlow:Z

    :cond_17
    :goto_5
    sget-boolean v7, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v7, :cond_1a

    iget-boolean v7, v1, Landroid/view/ViewRootImplInjector;->mReachDistance:Z

    if-nez v7, :cond_19

    iget-boolean v7, v1, Landroid/view/ViewRootImplInjector;->mSwipeTimeoSlow:Z

    if-eqz v7, :cond_18

    goto :goto_6

    :cond_18
    move/from16 v19, v3

    goto :goto_7

    :cond_19
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GESTURE_BUTTON] reach="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Landroid/view/ViewRootImplInjector;->mReachDistance:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " slow="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Landroid/view/ViewRootImplInjector;->mSwipeTimeoSlow:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " side="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " threshold="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " horThreshold="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " time="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v17

    move/from16 v19, v3

    sub-long v2, v15, v17

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " xMove="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " yMove="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, v1, Landroid/view/ViewRootImplInjector;->mRawY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_1a
    move/from16 v19, v3

    :goto_7
    iget-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mSwipeTimeoSlow:Z

    xor-int/lit8 v3, v2, 0x1

    iget-boolean v7, v1, Landroid/view/ViewRootImplInjector;->mReachDistance:Z

    and-int/2addr v3, v7

    if-eqz v3, :cond_1d

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonActive:Z

    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    :cond_1b
    sget-boolean v0, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v0, :cond_1c

    const-string v0, "[GESTURE_BUTTON] trigger!"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mCheckForGestureButton:Z

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mQueueMotionConsumed:Z

    goto/16 :goto_b

    :cond_1d
    if-nez v7, :cond_1f

    if-eqz v2, :cond_1e

    goto :goto_8

    :cond_1e
    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v7, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v2, v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mQueueMotionConsumed:Z

    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget v7, Landroid/view/ViewRootImplInjector;->GESTURE_MOTION_QUEUE_DELAY:I

    int-to-long v10, v7

    invoke-virtual {v2, v0, v10, v11}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    :cond_1f
    :goto_8
    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    :cond_20
    iget-boolean v0, v1, Landroid/view/ViewRootImplInjector;->mQueueMotionConsumed:Z

    if-nez v0, :cond_23

    const/4 v2, 0x0

    move v0, v2

    :goto_9
    :try_start_0
    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v7, v1, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/MotionEvent;

    invoke-virtual {v2, v7}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    sget-boolean v7, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE:Z

    if-eqz v7, :cond_21

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GESTURE_BUTTON] 2 dispatch mBackupEventList: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_22
    goto :goto_a

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_a
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mCheckForGestureButton:Z

    iput-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonActive:Z

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mQueueMotionConsumed:Z

    :cond_24
    :goto_b
    sget-boolean v0, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GESTURE_BUTTON] reachDistance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mReachDistance:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", swipeTimeoSlow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mSwipeTimeoSlow:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return v4

    :cond_26
    iget-boolean v0, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonActive:Z

    if-eqz v0, :cond_46

    return v4

    :cond_27
    iget-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonActive:Z

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mCheckForGestureButton:Z

    iput-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonActive:Z

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mQueueMotionConsumed:Z

    return v4

    :cond_28
    iget-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mCheckForGestureButton:Z

    if-eqz v2, :cond_2d

    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    :cond_29
    iget-boolean v0, v1, Landroid/view/ViewRootImplInjector;->mQueueMotionConsumed:Z

    if-nez v0, :cond_2c

    if-eq v5, v7, :cond_2c

    const/4 v2, 0x0

    move v0, v2

    :goto_c
    :try_start_1
    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2b

    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, v1, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    sget-boolean v3, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE:Z

    if-eqz v3, :cond_2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GESTURE_BUTTON] 3 dispatch mBackupEventList: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2b
    goto :goto_d

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_d
    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mQueueMotionConsumed:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mCheckForGestureButton:Z

    iput-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonActive:Z

    if-ne v5, v7, :cond_46

    return v4

    :cond_2d
    const/4 v2, 0x0

    goto/16 :goto_19

    :cond_2e
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mCheckForGestureButton:Z

    iput-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonActive:Z

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mQueueMotionConsumed:Z

    iget-object v2, v1, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v1, Landroid/view/ViewRootImplInjector;->mRawY:F

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mReachDistance:Z

    iput-boolean v2, v1, Landroid/view/ViewRootImplInjector;->mSwipeTimeoSlow:Z

    const/4 v2, 0x0

    iget-boolean v3, v1, Landroid/view/ViewRootImplInjector;->mSideGestureButtonEnabled:Z

    if-eqz v3, :cond_3d

    if-nez v9, :cond_32

    iget v3, v1, Landroid/view/ViewRootImplInjector;->mRawY:F

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mScreenHeight:I

    int-to-float v7, v7

    sget v11, Landroid/view/ViewRootImplInjector;->PORTRAIT_NON_DETECT_SCALE:F

    mul-float/2addr v7, v11

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_31

    iget v3, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mEdgeSwipeStartThreshold:I

    int-to-float v11, v7

    cmpg-float v11, v3, v11

    if-lez v11, :cond_2f

    iget v11, v1, Landroid/view/ViewRootImplInjector;->mScreenWidth:I

    sub-int/2addr v11, v7

    int-to-float v7, v11

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_31

    :cond_2f
    const/4 v2, 0x1

    iget v3, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mEdgeSwipeStartThreshold:I

    int-to-float v7, v7

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_30

    const/4 v3, 0x0

    goto :goto_e

    :cond_30
    move v3, v4

    :goto_e
    iput v3, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    goto :goto_10

    :cond_31
    invoke-virtual {v1, v4}, Landroid/view/ViewRootImplInjector;->getHomeGestureRegion(Z)Landroid/graphics/Region;

    move-result-object v3

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    float-to-int v7, v7

    iget v11, v1, Landroid/view/ViewRootImplInjector;->mRawY:F

    float-to-int v11, v11

    invoke-virtual {v3, v7, v11}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v2, 0x1

    iput v10, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    goto :goto_10

    :cond_32
    iget v3, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    float-to-int v3, v3

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mRawY:F

    float-to-int v7, v7

    invoke-virtual {v1, v3, v7, v6}, Landroid/view/ViewRootImplInjector;->adjuestEdgeThreshold(III)I

    move-result v3

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mRawY:F

    iget v11, v1, Landroid/view/ViewRootImplInjector;->mScreenWidth:I

    int-to-float v11, v11

    sget v12, Landroid/view/ViewRootImplInjector;->PORTRAIT_NON_DETECT_SCALE:F

    mul-float/2addr v11, v12

    cmpl-float v7, v7, v11

    if-ltz v7, :cond_35

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    int-to-float v11, v3

    cmpg-float v11, v7, v11

    if-lez v11, :cond_33

    iget v11, v1, Landroid/view/ViewRootImplInjector;->mScreenHeight:I

    sub-int/2addr v11, v3

    int-to-float v11, v11

    cmpl-float v7, v7, v11

    if-ltz v7, :cond_35

    :cond_33
    const/4 v2, 0x1

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    int-to-float v11, v3

    cmpg-float v7, v7, v11

    if-gtz v7, :cond_34

    const/4 v7, 0x0

    goto :goto_f

    :cond_34
    move v7, v4

    :goto_f
    iput v7, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    goto :goto_10

    :cond_35
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/ViewRootImplInjector;->getHomeGestureRegion(Z)Landroid/graphics/Region;

    move-result-object v11

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    float-to-int v7, v7

    iget v12, v1, Landroid/view/ViewRootImplInjector;->mRawY:F

    float-to-int v12, v12

    invoke-virtual {v11, v7, v12}, Landroid/graphics/Region;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_36

    const/4 v2, 0x1

    iput v10, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    :cond_36
    :goto_10
    if-eqz v2, :cond_43

    iget-object v3, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v3, :cond_37

    const/4 v3, 0x0

    goto :goto_11

    :cond_37
    iget-object v3, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mSystemUiVisibility:I

    :goto_11
    sget-boolean v7, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v7, :cond_39

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GESTURE_BUTTON] swipe from "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " on "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_38

    const-string v11, ""

    goto :goto_12

    :cond_38
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " mSysUiVis=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_12
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    iget v7, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    if-eq v7, v10, :cond_3a

    iget-object v7, v1, Landroid/view/ViewRootImplInjector;->mSystemGestureExclusionRegion:Landroid/graphics/Region;

    iget v11, v1, Landroid/view/ViewRootImplInjector;->mRawX:F

    float-to-int v11, v11

    iget v12, v1, Landroid/view/ViewRootImplInjector;->mRawY:F

    float-to-int v12, v12

    invoke-virtual {v7, v11, v12}, Landroid/graphics/Region;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_3a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GESTURE_BUTTON] skip swipe from "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mSystemGestureExclusionRegion="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Landroid/view/ViewRootImplInjector;->mSystemGestureExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_3a
    iget-object v7, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7db

    if-ne v7, v11, :cond_3b

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mSwipeSide:I

    if-eq v7, v10, :cond_3b

    goto :goto_13

    :cond_3b
    iget-boolean v7, v1, Landroid/view/ViewRootImplInjector;->mIsKeyguard:Z

    if-eqz v7, :cond_3c

    const/4 v2, 0x0

    :cond_3c
    :goto_13
    goto :goto_18

    :cond_3d
    const/4 v3, 0x0

    if-eqz v9, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    goto :goto_14

    :cond_3e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    :goto_14
    if-eqz v6, :cond_41

    if-ne v6, v4, :cond_3f

    goto :goto_16

    :cond_3f
    iget v7, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonHeight:I

    iput v7, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonZone:I

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonZone:I

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gez v7, :cond_40

    move v7, v4

    goto :goto_15

    :cond_40
    const/4 v7, 0x0

    :goto_15
    move v2, v7

    goto :goto_18

    :cond_41
    :goto_16
    iget v7, v1, Landroid/view/ViewRootImplInjector;->mScreenHeight:I

    iget v10, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonHeight:I

    sub-int/2addr v7, v10

    iput v7, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonZone:I

    iget v7, v1, Landroid/view/ViewRootImplInjector;->mGestureButtonZone:I

    int-to-float v7, v7

    cmpl-float v7, v3, v7

    if-lez v7, :cond_42

    move v7, v4

    goto :goto_17

    :cond_42
    const/4 v7, 0x0

    :goto_17
    move v2, v7

    :cond_43
    :goto_18
    if-eqz v2, :cond_46

    iput-boolean v4, v1, Landroid/view/ViewRootImplInjector;->mCheckForGestureButton:Z

    sget-boolean v3, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v3, :cond_44

    const-string v3, "[GESTURE_BUTTON] Hit Gesture Region !"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    iget-object v3, v1, Landroid/view/ViewRootImplInjector;->mBackupEventList:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v7, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v3, v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/view/ViewRootImplInjector;->mQueueMotionConsumed:Z

    iget-object v3, v1, Landroid/view/ViewRootImplInjector;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget v7, Landroid/view/ViewRootImplInjector;->GESTURE_MOTION_QUEUE_DELAY:I

    int-to-long v10, v7

    invoke-virtual {v3, v0, v10, v11}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v3, Landroid/view/ViewRootImplInjector;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v3, :cond_45

    const-string v3, "[GESTURE_BUTTON] sendMessages for MSG_GESTURE_MOTION_DOWN "

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return v4

    :cond_46
    :goto_19
    const/4 v2, 0x0

    return v2
.end method

.method public processPointerEvent(Landroid/view/MotionEvent;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    sget-object v1, Landroid/view/ViewRootImplInjector;->MULTI_TOUCH_GAME_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "ViewRootImplInjector"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-virtual {p4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found multi-touch game: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1f4

    cmp-long v1, v6, v8

    if-gez v1, :cond_3

    nop

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "oem_acc_sensor_three_finger"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v5

    :goto_2
    iput-boolean v1, p0, Landroid/view/ViewRootImplInjector;->mIsGestureScreenshotEnabled:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gesture Screenshot Enabled = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Landroid/view/ViewRootImplInjector;->mIsGestureScreenshotEnabled:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    iget-object v1, p0, Landroid/view/ViewRootImplInjector;->mGameShakeConfig:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/view/ViewRootImplInjector;->initInstance()V

    sget-object v1, Landroid/view/ViewRootImplInjector;->sOpViewRootImpl:Landroid/view/IOpViewRootImpl;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    sget-object v7, Landroid/view/ViewRootImplInjector;->sOpViewRootImpl:Landroid/view/IOpViewRootImpl;

    iget-object v8, p0, Landroid/view/ViewRootImplInjector;->mGameShakeConfig:Ljava/lang/String;

    invoke-interface {v7, v6, v5, v8}, Landroid/view/IOpViewRootImpl;->addMotionEventToAlgoArr(IZLjava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v6, 0x6

    if-ne v1, v6, :cond_5

    :cond_4
    iput-boolean v5, p0, Landroid/view/ViewRootImplInjector;->mIsGestureScreenshotEnabled:Z

    :cond_5
    iget-boolean v1, p0, Landroid/view/ViewRootImplInjector;->mIsGestureScreenshotEnabled:Z

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v1, v4, :cond_6

    if-nez v0, :cond_6

    move-object v1, p1

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    const-string v4, "Gesture Screenshot triggered, ignore event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    return v5
.end method
