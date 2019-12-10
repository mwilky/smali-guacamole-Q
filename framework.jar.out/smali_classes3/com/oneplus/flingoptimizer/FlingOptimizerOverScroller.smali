.class public Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;
.super Ljava/lang/Object;
.source "FlingOptimizerOverScroller.java"


# static fields
.field private static DEBUG:Z = false

.field private static DECELERATION_RATE:F = 0.0f

.field private static DECELERATION_TIME_SLOPE_GETTIME:F = 0.0f

.field private static final INFLEXION:F = 0.35f

.field private static SLOP_EPARAME_TERGET_DISTANCE:F = 0.0f

.field private static SLOW_DOWN_TUNNING_DISTANCE:F = 0.0f

.field private static SLOW_DOWN_TUNNING_VELOCITY:F = 0.0f

.field private static final SPLINE_DISTANCE_COMPLETE:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "FlingOptimizerScroller"


# instance fields
.field private final mPhysicalCoeff:F

.field private final ppi:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    nop

    const-string v0, "debug.fling.slowdown.distance"

    const-string v1, "5.4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->SLOW_DOWN_TUNNING_DISTANCE:F

    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->SLOW_DOWN_TUNNING_VELOCITY:F

    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->SLOP_EPARAME_TERGET_DISTANCE:F

    const v0, 0x3f570a3d    # 0.84f

    sput v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->DECELERATION_TIME_SLOPE_GETTIME:F

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->DECELERATION_RATE:F

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FlingOptimizerScroller"

    const-string v1, "FlingOptimizerOverScroller Init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->DEBUG:Z

    if-eqz v0, :cond_0

    nop

    const-string v0, "debug.fling.slowdown.distance"

    const-string v1, "5.4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->SLOW_DOWN_TUNNING_DISTANCE:F

    nop

    const-string v0, "debug.fling.slowdown.velocity"

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->SLOW_DOWN_TUNNING_VELOCITY:F

    nop

    const-string v0, "debug.fling.targetdistance"

    const-string v1, "1.5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->SLOP_EPARAME_TERGET_DISTANCE:F

    nop

    const-string v0, "debug.fling.decelerationtime"

    const-string v1, "0.84"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->DECELERATION_TIME_SLOPE_GETTIME:F

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->ppi:F

    const v0, 0x43c10b3d

    iget v1, p0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->ppi:F

    mul-float/2addr v1, v0

    sget v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->DECELERATION_TIME_SLOPE_GETTIME:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->mPhysicalCoeff:F

    return-void
.end method


# virtual methods
.method public fling(I)I
    .locals 0

    return p1
.end method

.method public getSplineFlingDistanceTuning(IF)D
    .locals 9

    nop

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget v2, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->DECELERATION_RATE:F

    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    iget v5, p0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v5, p2

    float-to-double v5, v5

    float-to-double v7, v2

    div-double/2addr v7, v3

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sget-boolean v2, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSplineFlingDistanceTuning  distance = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u3000velocity = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " deceleration = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " flingFriction = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " mPhysicalCoeff = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->mPhysicalCoeff:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "FlingOptimizerScroller"

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v2, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->SLOP_EPARAME_TERGET_DISTANCE:F

    float-to-double v7, v2

    mul-double/2addr v7, v5

    return-wide v7
.end method

.method public getSplineFlingDurationTuning(IF)I
    .locals 8

    nop

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget v2, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sget-boolean v5, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->DEBUG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSplineFlingDurationTuning  deceleration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " decelMinusOne = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " finalDuration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FlingOptimizerScroller"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    int-to-float v5, v4

    sget v6, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->SLOP_EPARAME_TERGET_DISTANCE:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    return v5
.end method

.method public getUpdateDistance(JII)D
    .locals 10

    sget v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->SLOW_DOWN_TUNNING_DISTANCE:F

    neg-float v0, v0

    const v1, 0x44138000    # 590.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44160000    # 600.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    sget v2, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->SLOW_DOWN_TUNNING_DISTANCE:F

    neg-float v2, v2

    long-to-float v3, p1

    int-to-float v4, p3

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v3, v0, v2

    int-to-float v4, p4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    float-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    return-wide v4

    :cond_0
    cmpl-float v1, v3, v1

    if-ltz v1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_1
    sget-boolean v1, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUpdateDistance distanceCoef = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " distance ="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " splineDistance = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentTime = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " splineDuration = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " distanceCoef1 = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " distanceCoef2 = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "FlingOptimizerScroller"

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    int-to-float v1, p4

    mul-float/2addr v1, v3

    float-to-double v6, v1

    return-wide v6
.end method

.method public getUpdateVelocity(JII)F
    .locals 3

    sget v0, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->SLOW_DOWN_TUNNING_VELOCITY:F

    neg-float v0, v0

    long-to-float v1, p1

    int-to-float v2, p3

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    sget-boolean v1, Lcom/oneplus/flingoptimizer/FlingOptimizerOverScroller;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateVelocity  currentTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " splineDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " velocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " updateVelocity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v2, p4

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlingOptimizerScroller"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    int-to-float v1, p4

    mul-float/2addr v1, v0

    return v1
.end method
