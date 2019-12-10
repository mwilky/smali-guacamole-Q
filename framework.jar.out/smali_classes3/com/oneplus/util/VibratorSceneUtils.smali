.class public Lcom/oneplus/util/VibratorSceneUtils;
.super Ljava/lang/Object;
.source "VibratorSceneUtils.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "VibratorSceneUtils"

.field public static final VIBRATOR_SCENE_CALENDAR_DATE:I = 0x3

.field public static final VIBRATOR_SCENE_CHARGER:I = 0x15

.field public static final VIBRATOR_SCENE_CLOCK_TICK:I = 0x2

.field public static final VIBRATOR_SCENE_DASH_CHARGER:I = 0x16

.field public static final VIBRATOR_SCENE_DRAW_LOCK_PATTERN:I = 0x1b

.field public static final VIBRATOR_SCENE_GESTURE_KEY:I = 0x18

.field public static final VIBRATOR_SCENE_INVALID:I = -0x1

.field public static final VIBRATOR_SCENE_LONG_PRESS:I = 0x4

.field public static final VIBRATOR_SCENE_NAVIGATION_KEY:I = 0x3e9

.field public static final VIBRATOR_SCENE_POWER_KEY_ASSIST:I = 0x17

.field public static final VIBRATOR_SCENE_POWER_KEY_MENU:I = 0x14

.field public static final VIBRATOR_SCENE_QUICK_GESTURE:I = 0x1a

.field public static final VIBRATOR_SCENE_SCREEN_SHOT:I = 0x19

.field public static final VIBRATOR_SCENE_VIRTUAL_KEY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/util/VibratorSceneUtils;->DBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p2}, Lcom/oneplus/util/VibratorSceneUtils;->isVibratorSceneSupported(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Landroid/os/Vibrator;

    :cond_0
    sget-boolean v1, Lcom/oneplus/util/VibratorSceneUtils;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doVibrateWithSceneIfNeeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorSceneUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0, p1, p2}, Lcom/oneplus/util/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static doVibrateWithSceneMultipleTimes(Landroid/content/Context;Landroid/os/Vibrator;IIII)Z
    .locals 17

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [I

    const/4 v7, 0x0

    const/16 v8, 0x76

    aput v8, v6, v7

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p1, :cond_0

    const-class v6, Landroid/os/Vibrator;

    move-object/from16 v8, p0

    invoke-virtual {v8, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    goto :goto_0

    :cond_0
    move-object/from16 v8, p0

    move-object/from16 v6, p1

    :goto_0
    if-eqz v6, :cond_3

    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "vibrate_on_touch_intensity"

    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    aget v11, v9, v10

    invoke-virtual {v6, v0}, Landroid/os/Vibrator;->setVibratorEffect(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    add-int/lit8 v14, v3, 0x1

    const/4 v15, 0x2

    mul-int/2addr v14, v15

    add-int/lit8 v13, v14, -0x1

    if-le v13, v15, :cond_3

    new-array v15, v14, [J

    move-object/from16 v16, v6

    int-to-long v5, v11

    aput-wide v5, v15, v7

    int-to-long v5, v1

    const/4 v7, 0x1

    aput-wide v5, v15, v7

    const/4 v5, 0x2

    :goto_1
    if-ge v5, v14, :cond_1

    int-to-long v6, v12

    aput-wide v6, v15, v5

    add-int/lit8 v6, v5, 0x1

    int-to-long v7, v2

    aput-wide v7, v15, v6

    add-int/lit8 v5, v5, 0x2

    move-object/from16 v8, p0

    goto :goto_1

    :cond_1
    array-length v5, v15

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v15, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    move-object/from16 v6, v16

    const/4 v7, -0x1

    invoke-virtual {v6, v5, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    const/4 v4, 0x1

    sget-boolean v7, Lcom/oneplus/util/VibratorSceneUtils;->DBG:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doVibrateMultipleTimes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VibratorSceneUtils"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-object/from16 v6, p1

    :cond_3
    :goto_2
    return v4

    nop

    :array_0
    .array-data 4
        -0x1
        -0x2
        -0x3
    .end array-data
.end method

.method public static getVibratorSceneEffectId(ILjava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/16 v1, 0x3ea

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x1b

    goto :goto_0

    :cond_3
    const-string v1, "Virtual Key - Press"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x3e9

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    nop

    :goto_0
    sget-boolean v1, Lcom/oneplus/util/VibratorSceneUtils;->DBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVibratorSceneEffectId: effectId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), sceneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorSceneUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method public static getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J
    .locals 8

    invoke-static {p0, p2}, Lcom/oneplus/util/VibratorSceneUtils;->isVibratorSceneSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "vibrate_on_touch_intensity"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aget v4, v1, v2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Vibrator;->setVibratorEffect(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    new-array v0, v0, [J

    int-to-long v6, v4

    aput-wide v6, v0, v3

    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v0, v3

    const/4 v3, 0x2

    int-to-long v6, v5

    aput-wide v6, v0, v3

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 4
        -0x1
        -0x2
        -0x3
    .end array-data
.end method

.method public static isVibratorSceneSupported(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x76

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "haptic_feedback_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x15

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
