.class public Landroid/os/OpBatteryStatsInjector;
.super Ljava/lang/Object;
.source "OpBatteryStatsInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

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

.method public static initInstance(Lcom/android/internal/os/BatteryStatsImpl;)V
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

    invoke-interface {v0, p0}, Landroid/os/IOpBatteryStats;->initInstance(Lcom/android/internal/os/BatteryStatsImpl;)V

    :cond_1
    return-void
.end method
