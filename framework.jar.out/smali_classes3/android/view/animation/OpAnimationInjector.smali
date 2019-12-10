.class public Landroid/view/animation/OpAnimationInjector;
.super Ljava/lang/Object;
.source "OpAnimationInjector.java"


# static fields
.field public static final IS_ONEPLUS_ANIMATION_ENABLED:Z

.field private static sOpAnimation:Landroid/view/animation/IOpAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xc2

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v0, [I

    const/16 v3, 0xc4

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
    sput-boolean v0, Landroid/view/animation/OpAnimationInjector;->IS_ONEPLUS_ANIMATION_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOpAnimationFromString(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .locals 1

    invoke-static {}, Landroid/view/animation/OpAnimationInjector;->initInstance()V

    sget-object v0, Landroid/view/animation/OpAnimationInjector;->sOpAnimation:Landroid/view/animation/IOpAnimation;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Landroid/view/animation/IOpAnimation;->getOpAnimationFromString(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Landroid/view/animation/OpAnimationInjector;->IS_ONEPLUS_ANIMATION_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/animation/OpAnimationInjector;->sOpAnimation:Landroid/view/animation/IOpAnimation;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_ANIMATION:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/IOpAnimation;

    sput-object v0, Landroid/view/animation/OpAnimationInjector;->sOpAnimation:Landroid/view/animation/IOpAnimation;

    :cond_0
    return-void
.end method
