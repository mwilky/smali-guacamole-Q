.class public Landroid/os/OpBatteryStatsInjector;
.super Ljava/lang/Object;
.source "OpBatteryStatsInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field public static final DUMP_LAST_DAILY_PLAIN:I = 0x100

.field public static final DUMP_LAST_DAILY_PROTO:I = 0x80

.field private static final TAG:Ljava/lang/String; = "OpBatteryStatsInjector"

.field private static opBatteryStats:Landroid/os/IOpBatteryStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/os/OpBatteryStatsInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpClkInfo(Ljava/io/PrintWriter;)V
    .locals 1

    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_BATTERYSTATS:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IOpBatteryStats;

    sput-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    :cond_0
    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/os/IOpBatteryStats;->dumpClkInfo(Ljava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public static dumpLatestDailyInfo(Ljava/io/PrintWriter;ILandroid/util/proto/ProtoOutputStream;)Z
    .locals 1

    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_BATTERYSTATS:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IOpBatteryStats;

    sput-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    :cond_0
    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1, p2}, Landroid/os/IOpBatteryStats;->dumpLatestDailyInfo(Ljava/io/PrintWriter;ILandroid/util/proto/ProtoOutputStream;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dumpRpmStats(Ljava/io/PrintWriter;)V
    .locals 1

    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_BATTERYSTATS:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IOpBatteryStats;

    sput-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    :cond_0
    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/os/IOpBatteryStats;->dumpRpmStats(Ljava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public static getFlag()I
    .locals 1

    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_BATTERYSTATS:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IOpBatteryStats;

    sput-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    :cond_0
    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IOpBatteryStats;->getFlag()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static initInstance(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_BATTERYSTATS:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IOpBatteryStats;

    sput-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    :cond_0
    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroid/os/IOpBatteryStats;->initInstance(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static reportDailyProto()V
    .locals 3

    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_BATTERYSTATS:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IOpBatteryStats;

    sput-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    :cond_0
    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xee

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/OpBatteryStatsInjector;->opBatteryStats:Landroid/os/IOpBatteryStats;

    invoke-interface {v0}, Landroid/os/IOpBatteryStats;->reportDailyProto()V

    :cond_1
    return-void
.end method
