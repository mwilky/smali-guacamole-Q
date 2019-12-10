.class public interface abstract Lcom/oneplus/android/os/IOpMotorStateChangedCallback;
.super Ljava/lang/Object;
.source "IOpMotorStateChangedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/os/IOpMotorStateChangedCallback$Stub;,
        Lcom/oneplus/android/os/IOpMotorStateChangedCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onMotorStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
