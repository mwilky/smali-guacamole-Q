.class public interface abstract Lcom/oneplus/android/screenmode/IOpScreenMode;
.super Ljava/lang/Object;
.source "IOpScreenMode.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/screenmode/IOpScreenMode$Stub;,
        Lcom/oneplus/android/screenmode/IOpScreenMode$Default;
    }
.end annotation


# virtual methods
.method public abstract setRefreshRate(Landroid/os/IBinder;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateScenario(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
