.class public interface abstract Lcom/android/internal/os/IExtProcessCpuTracker;
.super Ljava/lang/Object;
.source "IExtProcessCpuTracker.java"


# virtual methods
.method public abstract collectAnbormalStats()Z
.end method

.method public abstract getSystemTempreture()I
.end method

.method public abstract initInstance(Lcom/android/internal/os/ProcessCpuTracker;)V
.end method

.method public abstract printCpuTrack(Ljava/io/PrintWriter;)V
.end method

.method public abstract tryPersistToDisk()V
.end method

.method public abstract updateCurrentSampleWallTime(J)V
.end method

.method public abstract updateLastSampleWallTime(J)V
.end method

.method public abstract updateSystemTempreture(I)V
.end method
