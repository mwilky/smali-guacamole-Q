.class public interface abstract Landroid/os/IOpBatteryStats;
.super Ljava/lang/Object;
.source "IOpBatteryStats.java"


# virtual methods
.method public abstract dumpClkInfo(Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpLatestDailyInfo(Ljava/io/PrintWriter;ILandroid/util/proto/ProtoOutputStream;)Z
.end method

.method public abstract dumpRpmStats(Ljava/io/PrintWriter;)V
.end method

.method public abstract getFlag()I
.end method

.method public abstract initInstance(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/Context;)V
.end method

.method public abstract reportDailyProto()V
.end method
