.class public Landroid/view/OpScreenCompatViewInjector;
.super Ljava/lang/Object;
.source "OpScreenCompatViewInjector.java"


# static fields
.field public static final DEBUG_DISPLAY_COMPAT:Z

.field private static final IS_SCREEN_COMPAT_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OpScreenCompatViewInjector"

.field public static sCompatDensity:I

.field public static sIsDisplayCompatApp:Z

.field private static sOpScreenCompatView:Landroid/view/IOpScreenCompatView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x29

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v0, [I

    const/16 v3, 0x40

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    sput-boolean v0, Landroid/view/OpScreenCompatViewInjector;->IS_SCREEN_COMPAT_ENABLED:Z

    sput-boolean v2, Landroid/view/OpScreenCompatViewInjector;->sIsDisplayCompatApp:Z

    nop

    const-string/jumbo v0, "persist.sys.compat.debug"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/OpScreenCompatViewInjector;->DEBUG_DISPLAY_COMPAT:Z

    const/16 v0, 0x1a4

    sput v0, Landroid/view/OpScreenCompatViewInjector;->sCompatDensity:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyCompatInfo(Landroid/content/res/CompatibilityInfo;Landroid/util/DisplayMetrics;)V
    .locals 2

    sget-boolean v0, Landroid/view/OpScreenCompatViewInjector;->sIsDisplayCompatApp:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v1, Landroid/view/OpScreenCompatViewInjector;->sCompatDensity:I

    if-eq v0, v1, :cond_1

    sget-boolean v0, Landroid/view/OpScreenCompatViewInjector;->DEBUG_DISPLAY_COMPAT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCompat: applyCompatInfo, change out="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/view/OpScreenCompatViewInjector;->sCompatDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpScreenCompatViewInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method

.method public static enterScreenCompatMode(Landroid/view/ViewRootImpl;ZI)V
    .locals 1

    invoke-static {}, Landroid/view/OpScreenCompatViewInjector;->initInstance()V

    sget-object v0, Landroid/view/OpScreenCompatViewInjector;->sOpScreenCompatView:Landroid/view/IOpScreenCompatView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Landroid/view/IOpScreenCompatView;->enterScreenCompatMode(Landroid/view/ViewRootImpl;ZI)V

    :cond_0
    return-void
.end method

.method public static getLimitedDisplaySize(Landroid/graphics/Point;)V
    .locals 1

    invoke-static {}, Landroid/view/OpScreenCompatViewInjector;->initInstance()V

    sget-object v0, Landroid/view/OpScreenCompatViewInjector;->sOpScreenCompatView:Landroid/view/IOpScreenCompatView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/IOpScreenCompatView;->getLimitedDisplaySize(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public static getLimitedDisplaySize(Landroid/util/DisplayMetrics;)V
    .locals 1

    invoke-static {}, Landroid/view/OpScreenCompatViewInjector;->initInstance()V

    sget-object v0, Landroid/view/OpScreenCompatViewInjector;->sOpScreenCompatView:Landroid/view/IOpScreenCompatView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/IOpScreenCompatView;->getLimitedDisplaySize(Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method public static getLimitedLocation(Landroid/view/ViewRootImpl;[I)V
    .locals 1

    invoke-static {}, Landroid/view/OpScreenCompatViewInjector;->initInstance()V

    sget-object v0, Landroid/view/OpScreenCompatViewInjector;->sOpScreenCompatView:Landroid/view/IOpScreenCompatView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/view/IOpScreenCompatView;->getLimitedLocation(Landroid/view/ViewRootImpl;[I)V

    :cond_0
    return-void
.end method

.method public static getLimitedSize(II)Landroid/graphics/Point;
    .locals 1

    invoke-static {}, Landroid/view/OpScreenCompatViewInjector;->initInstance()V

    sget-object v0, Landroid/view/OpScreenCompatViewInjector;->sOpScreenCompatView:Landroid/view/IOpScreenCompatView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/view/IOpScreenCompatView;->getLimitedSize(II)Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Landroid/view/OpScreenCompatViewInjector;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/OpScreenCompatViewInjector;->sOpScreenCompatView:Landroid/view/IOpScreenCompatView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_SCREEN_COMPAT_VIEW:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IOpScreenCompatView;

    sput-object v0, Landroid/view/OpScreenCompatViewInjector;->sOpScreenCompatView:Landroid/view/IOpScreenCompatView;

    :cond_0
    return-void
.end method

.method public static isInScreenCompat(Landroid/view/ViewRootImpl;)Z
    .locals 1

    invoke-static {}, Landroid/view/OpScreenCompatViewInjector;->initInstance()V

    sget-object v0, Landroid/view/OpScreenCompatViewInjector;->sOpScreenCompatView:Landroid/view/IOpScreenCompatView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/IOpScreenCompatView;->isInScreenCompat(Landroid/view/ViewRootImpl;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static overrideDisplayMetricsIfNeed(Landroid/util/DisplayMetrics;)V
    .locals 4

    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v1, Landroid/view/OpScreenCompatViewInjector;->sCompatDensity:I

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    int-to-float v2, v1

    const v3, 0x3bcccccd    # 0.00625f

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-boolean v1, Landroid/view/OpScreenCompatViewInjector;->DEBUG_DISPLAY_COMPAT:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayCompat: applyToDisplayMetrics0, inoutDm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " noncompatDensityDpi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpScreenCompatViewInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static updateCompatDensityIfNeed(I)V
    .locals 4

    sget-boolean v0, Landroid/view/OpScreenCompatViewInjector;->sIsDisplayCompatApp:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sget v1, Landroid/view/OpScreenCompatViewInjector;->sCompatDensity:I

    if-eq v1, v0, :cond_1

    sput v0, Landroid/view/OpScreenCompatViewInjector;->sCompatDensity:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayCompat: updateCompatDensityIfNeed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpScreenCompatViewInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static updateEvent(Landroid/view/MotionEvent;ZZI)V
    .locals 1

    invoke-static {}, Landroid/view/OpScreenCompatViewInjector;->initInstance()V

    sget-object v0, Landroid/view/OpScreenCompatViewInjector;->sOpScreenCompatView:Landroid/view/IOpScreenCompatView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/view/IOpScreenCompatView;->updateEvent(Landroid/view/MotionEvent;ZZI)V

    :cond_0
    return-void
.end method
