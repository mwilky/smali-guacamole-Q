.class public Landroid/app/OpAppOpsManagerInjector;
.super Ljava/lang/Object;
.source "OpAppOpsManagerInjector.java"


# static fields
.field public static final CUSTOM_NUM_OP:I = 0x3f2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final DEBUG_ONEPLUS:Z

.field public static final OPSTR_APP_SCREEN_COMPAT:Ljava/lang/String; = "android:oneplus_screen_compact"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUTO_START:Ljava/lang/String; = "android:auto_start"

.field public static final OPSTR_BLUETOOTH_ADMIN:Ljava/lang/String; = "android:bluetooth_admin"

.field public static final OPSTR_GAME_MODE_APP:Ljava/lang/String; = "android:oneplus_game_mode_app"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_LOCK_APP:Ljava/lang/String; = "android:oneplus_lock_app"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_PARALLEL_APP:Ljava/lang/String; = "android:oneplus_parallel_app"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_MODE_APP:Ljava/lang/String; = "android:oneplus_read_mode_app"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WLB_LIFE_MODE_APP:Ljava/lang/String; = "android:oneplus_wlb_life_mode_app"

.field public static final OPSTR_WLB_WORK_MODE_APP:Ljava/lang/String; = "android:oneplus_wlb_work_mode_app"

.field public static final OP_APP_SCREEN_COMPAT:I = 0x3ee

.field public static final OP_AUTO_START:I = 0x3ef

.field public static final OP_BLUETOOTH_ADMIN:I = 0x3ea

.field public static final OP_CUSTOM_NONE:I = 0x3e8
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final OP_GAME_MODE_APP:I = 0x3ec

.field public static final OP_LOCK_APP:I = 0x3e9

.field public static final OP_PARALLEL_APP:I = 0x3ed

.field public static final OP_READ_MODE_APP:I = 0x3eb

.field public static final OP_WLB_LIFE_MODE:I = 0x3f1

.field public static final OP_WLB_WORK_MODE:I = 0x3f0

.field private static final TAG:Ljava/lang/String;

.field public static sCustomOpAllowSystemRestrictionBypass:[Z

.field public static sCustomOpDefaultMode:[I

.field public static sCustomOpDisableReset:[Z

.field public static sCustomOpNames:[Ljava/lang/String;

.field public static sCustomOpPerms:[Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static sCustomOpRestrictions:[Ljava/lang/String;

.field public static sCustomOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sCustomOpToString:[Ljava/lang/String;

.field public static sCustomOpToSwitch:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Landroid/app/OpAppOpsManagerInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OpAppOpsManagerInjector;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/app/OpAppOpsManagerInjector;->DEBUG_ONEPLUS:Z

    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/app/OpAppOpsManagerInjector;->sCustomOpToSwitch:[I

    const-string v2, "android:oneplus_lock_app"

    const-string v3, "android:bluetooth_admin"

    const-string v4, "android:oneplus_read_mode_app"

    const-string v5, "android:oneplus_game_mode_app"

    const-string v6, "android:oneplus_parallel_app"

    const-string v7, "android:oneplus_screen_compact"

    const-string v8, "android:auto_start"

    const-string v9, "android:oneplus_wlb_work_mode_app"

    const-string v10, "android:oneplus_wlb_life_mode_app"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/OpAppOpsManagerInjector;->sCustomOpToString:[Ljava/lang/String;

    const-string v2, "LOCK_APP"

    const-string v3, "BLUETOOTH_ADMIN"

    const-string v4, "READ_MODE_APP"

    const-string v5, "GAME_MODE_APP"

    const-string v6, "PARALLEL_APP"

    const-string v7, "APP_SCREEN_COMPAT"

    const-string v8, "AUTO_START"

    const-string v9, "WLB_WORD_MODE"

    const-string v10, "WLB_LIFE_MODE"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/OpAppOpsManagerInjector;->sCustomOpNames:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/OpAppOpsManagerInjector;->sCustomOpPerms:[Ljava/lang/String;

    const/4 v3, 0x0

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/OpAppOpsManagerInjector;->sCustomOpRestrictions:[Ljava/lang/String;

    new-array v1, v0, [Z

    fill-array-data v1, :array_1

    sput-object v1, Landroid/app/OpAppOpsManagerInjector;->sCustomOpAllowSystemRestrictionBypass:[Z

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/app/OpAppOpsManagerInjector;->sCustomOpDefaultMode:[I

    new-array v1, v0, [Z

    fill-array-data v1, :array_3

    sput-object v1, Landroid/app/OpAppOpsManagerInjector;->sCustomOpDisableReset:[Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/OpAppOpsManagerInjector;->sCustomOpStrToOp:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v2, Landroid/app/OpAppOpsManagerInjector;->sCustomOpToString:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    sget-object v3, Landroid/app/OpAppOpsManagerInjector;->sCustomOpStrToOp:Ljava/util/HashMap;

    aget-object v2, v2, v1

    add-int/lit16 v4, v1, 0x3e9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3e9
        0x3ea
        0x3eb
        0x3ec
        0x3ed
        0x3ee
        0x3ef
        0x3f0
        0x3f1
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x3
        0x0
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllOpStrs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    array-length v0, p0

    sget-object v1, Landroid/app/OpAppOpsManagerInjector;->sCustomOpToString:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Landroid/app/OpAppOpsManagerInjector;->sCustomOpToString:[Ljava/lang/String;

    array-length v3, p0

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
