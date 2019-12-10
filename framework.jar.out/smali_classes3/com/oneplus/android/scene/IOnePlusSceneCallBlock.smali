.class public interface abstract Lcom/oneplus/android/scene/IOnePlusSceneCallBlock;
.super Ljava/lang/Object;
.source "IOnePlusSceneCallBlock.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/scene/IOnePlusSceneCallBlock$Stub;,
        Lcom/oneplus/android/scene/IOnePlusSceneCallBlock$Default;
    }
.end annotation


# virtual methods
.method public abstract isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isNotificationMutedByCallBlocker(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isStreamMutedByCallBlocker(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isUsageMutedByCallBlocker(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract needUpdate(Landroid/content/Intent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePis()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
