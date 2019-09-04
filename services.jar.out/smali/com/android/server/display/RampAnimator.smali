.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final A:F = 0.17883277f

.field private static final ADJUST_VALUE:I = 0x1068

.field private static final B:F = 0.28466892f

.field private static final C:F = 0.5599107f

.field private static final GAMMA_SPACE_MAX:I = 0x3ff

.field private static final R:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "RampAnimator"


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/RampAnimator;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/RampAnimator;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method private calculateRampRate(II)I
    .locals 6

    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    const v3, 0x447fc000    # 1023.0f

    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_0

    div-float v3, v1, v3

    invoke-static {v3}, Landroid/util/MathUtils;->sq(F)F

    move-result v3

    goto :goto_0

    :cond_0
    const v3, 0x3f0f564f

    sub-float v3, v1, v3

    const v4, 0x3e371ff0

    div-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/MathUtils;->exp(F)F

    move-result v3

    const v4, 0x3e91c020

    add-float/2addr v3, v4

    :goto_0
    const v4, 0x45834000    # 4200.0f

    const/high16 v5, 0x41400000    # 12.0f

    div-float v5, v3, v5

    invoke-static {v2, v4, v5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v4, 0xf0

    const/16 v5, 0x1e

    if-ge v2, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    if-le v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    move v2, v4

    const/16 v4, 0x3c

    if-gt p1, v4, :cond_3

    if-gt p2, v4, :cond_3

    const/16 v2, 0x32

    :cond_3
    return v2
.end method

.method private cancelAnimationCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method private postAnimationCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public animateTo(I)Z
    .locals 3

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/RampAnimator;->calculateRampRate(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateRampRate(): rate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RampAnimator"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v1

    return v1
.end method

.method public animateTo(II)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-gt p2, v0, :cond_2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v0, :cond_1

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v0, v3, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v0, v3, :cond_3

    if-gt v3, p1, :cond_3

    :cond_2
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    :cond_3
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-eq v0, p1, :cond_4

    move v2, v1

    :cond_4
    move v0, v2

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_5

    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    int-to-float v1, v2

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    :cond_5
    return v0

    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v0, :cond_7

    goto :goto_1

    :cond_7
    return v2

    :cond_8
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    iput v2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_9

    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_a
    return v1
.end method

.method public getBrightnessValue()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-void
.end method
