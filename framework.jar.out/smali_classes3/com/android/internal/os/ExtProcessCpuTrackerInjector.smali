.class public Lcom/android/internal/os/ExtProcessCpuTrackerInjector;
.super Ljava/lang/Object;
.source "ExtProcessCpuTrackerInjector.java"


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "ExtProcessCpuTrackerInjector"

.field private static extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectAnbormalStats()Z
    .locals 1

    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_EXTPROCESSCPUTRACKER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IExtProcessCpuTracker;

    sput-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    :cond_0
    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/os/IExtProcessCpuTracker;->collectAnbormalStats()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getSystemTempreture()I
    .locals 1

    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_EXTPROCESSCPUTRACKER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IExtProcessCpuTracker;

    sput-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    :cond_0
    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/os/IExtProcessCpuTracker;->getSystemTempreture()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static initInstance(Lcom/android/internal/os/ProcessCpuTracker;)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_EXTPROCESSCPUTRACKER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IExtProcessCpuTracker;

    sput-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    :cond_0
    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/internal/os/IExtProcessCpuTracker;->initInstance(Lcom/android/internal/os/ProcessCpuTracker;)V

    :cond_1
    return-void
.end method

.method public static printCpuTrack(Ljava/io/PrintWriter;)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_EXTPROCESSCPUTRACKER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IExtProcessCpuTracker;

    sput-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    :cond_0
    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/internal/os/IExtProcessCpuTracker;->printCpuTrack(Ljava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public static tryPersistToDisk()V
    .locals 1

    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_EXTPROCESSCPUTRACKER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IExtProcessCpuTracker;

    sput-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    :cond_0
    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/os/IExtProcessCpuTracker;->tryPersistToDisk()V

    :cond_1
    return-void
.end method

.method public static updateCurrentSampleWallTime(J)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_EXTPROCESSCPUTRACKER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IExtProcessCpuTracker;

    sput-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    :cond_0
    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/internal/os/IExtProcessCpuTracker;->updateCurrentSampleWallTime(J)V

    :cond_1
    return-void
.end method

.method public static updateLastSampleWallTime(J)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_EXTPROCESSCPUTRACKER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IExtProcessCpuTracker;

    sput-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    :cond_0
    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/android/internal/os/IExtProcessCpuTracker;->updateLastSampleWallTime(J)V

    :cond_1
    return-void
.end method

.method public static updateSystemTempreture(I)V
    .locals 1

    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_EXTPROCESSCPUTRACKER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IExtProcessCpuTracker;

    sput-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    :cond_0
    sget-object v0, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->extProcessCpuTracker:Lcom/android/internal/os/IExtProcessCpuTracker;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/internal/os/IExtProcessCpuTracker;->updateSystemTempreture(I)V

    :cond_1
    return-void
.end method
