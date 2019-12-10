.class public Landroid/os/OpPowerManagerInjector;
.super Ljava/lang/Object;
.source "OpPowerManagerInjector.java"


# static fields
.field private static final MAX_BRIGHTNESS_LEVEL_1023:I = 0x3ff

.field private static final MAX_BRIGHTNESS_LEVEL_255:I = 0xff

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/os/OpPowerManagerInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/OpPowerManagerInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxBrightness()I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x6c

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3ff

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    return v0
.end method
