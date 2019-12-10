.class public interface abstract Lcom/android/server/wm/IOPAppSwitchObserver;
.super Ljava/lang/Object;
.source "IOPAppSwitchObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/IOPAppSwitchObserver$Stub;,
        Lcom/android/server/wm/IOPAppSwitchObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract onActivityEnter(Lcom/color/app/ColorAppEnterInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onActivityExit(Lcom/color/app/ColorAppExitInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAppEnter(Lcom/color/app/ColorAppEnterInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAppExit(Lcom/color/app/ColorAppExitInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
