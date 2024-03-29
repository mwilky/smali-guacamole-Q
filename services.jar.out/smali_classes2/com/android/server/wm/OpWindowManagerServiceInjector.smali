.class public Lcom/android/server/wm/OpWindowManagerServiceInjector;
.super Ljava/lang/Object;
.source "OpWindowManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field public static final IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OpWindowManagerServiceInjector"

.field public static sForceNotSizeCompatList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sNavGestureFullscreenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sOpSnapshotScaleFraction:F

.field private static sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->DEBUG:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc6

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    const-string v0, "persist.sys.snapshot.scale"

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    sput v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpSnapshotScaleFraction:F

    const-string v0, "com.oneplus.note"

    const-string v1, "com.oneplus.filemanager"

    const-string v2, "net.oneplus.forums"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sForceNotSizeCompatList:Ljava/util/List;

    const-string v1, "com.eg.android.AlipayGphone"

    const-string v2, "com.bilibili.app"

    const-string v3, "tv.danmaku.bili"

    const-string v4, "com.bilibili.app.in"

    const-string v5, "com.tencent.qqmusic"

    const-string v6, "com.netease.cloudmusic"

    const-string v7, "com.netease.yanxuan"

    const-string v8, "com.autonavi.minimap"

    const-string v9, "com.xunmeng.pinduoduo"

    const-string v10, "air.tv.douyu.android"

    const-string v11, "com.youku.phone"

    const-string v12, "com.baidu.searchbox"

    const-string v13, "com.baidu.tieba"

    const-string v14, "com.kugou.android"

    const-string v15, "com.tencent.android.qqdownloader"

    const-string v16, "com.xingin.xhs"

    const-string v17, "com.tencent.qqpimsecure"

    const-string v18, "sogou.mobile.explorer"

    const-string v19, "com.xiaomi.smarthome"

    const-string v20, "com.unionpay"

    const-string v21, "com.tencent.weread"

    const-string v22, "com.cmbchina.ccd.pluto.cmbActivity"

    const-string v23, "com.hupu.games"

    const-string v24, "com.tencent.tim"

    const-string v25, "com.google.earth"

    const-string v26, "jp.naver.line.android"

    const-string v27, "com.tencent.mobileqq"

    const-string v28, "com.qq.reader"

    const-string v29, "com.nintendo.znca"

    const-string v30, "com.icbc"

    const-string v31, "com.baidu.netdisk"

    const-string v32, "cn.kuwo.player"

    const-string v33, "ctrip.android.view"

    const-string v34, "com.baidu.homework"

    const-string v35, "com.alibaba.aliyun"

    const-string v36, "com.eastmoney.android.berlin"

    const-string v37, "com.netease.mail"

    const-string v38, "com.cainiao.wireless"

    const-string v39, "com.google.android.apps.translate"

    filled-new-array/range {v1 .. v39}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sNavGestureFullscreenList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustFocusStackIfNeed(Lcom/android/server/wm/ActivityDisplay;Lcom/android/server/wm/ActivityStack;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustFocusStackIfNeed: setFocus to taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpWindowManagerServiceInjector"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    :cond_0
    return-void
.end method

.method public static canSkiWindowAnimation(Lcom/android/server/wm/WindowState;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable dim window enter anim for win:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " main="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpWindowManagerServiceInjector"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static canSkipAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/AppWindowToken;IZILcom/android/server/wm/AppTransition;)Z
    .locals 7

    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    const/16 v2, 0x19

    if-ne p2, v2, :cond_1

    invoke-virtual {p5}, Lcom/android/server/wm/AppTransition;->isCustomAnimationType()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v4

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v2, v3, v4, v5, p4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iget-object v4, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iget-object v5, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v6, 0xe

    invoke-virtual {v5, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable exit anim for translucent app:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " win="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "OpWindowManagerServiceInjector"

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method public static createScreenRotationAnimation(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Lcom/android/server/wm/IScreenRotationAnimation;
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpWindowManagerService;->createScreenRotationAnimation(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static forceDark(Landroid/content/Context;I)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpWindowManagerService;->forceDark(Landroid/content/Context;I)I

    move-result v0

    return v0

    :cond_0
    return p1
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_windowmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpWindowManagerService;

    sput-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;

    :cond_0
    return-void
.end method

.method public static reserFrameForNavGesture(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;I)V
    .locals 2

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->isGestureButtonWithoutHideBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sNavGestureFullscreenList:Ljava/util/List;

    invoke-virtual {p6}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p7

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p7

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p7

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p7

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p4, Landroid/graphics/Rect;->bottom:I

    :cond_3
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p7

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    :cond_4
    return-void
.end method

.method public static stopFreezingDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpWindowManagerServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpWindowManagerService:Lcom/android/server/wm/IOpWindowManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpWindowManagerService;->stopFreezingDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_0
    return-void
.end method
