.class public interface abstract Lcom/oneplus/android/wifi/IOpSoftApConnectedDeviceManagerCallback;
.super Ljava/lang/Object;
.source "IOpSoftApConnectedDeviceManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/wifi/IOpSoftApConnectedDeviceManagerCallback$Stub;,
        Lcom/oneplus/android/wifi/IOpSoftApConnectedDeviceManagerCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract sendNumAssociatedStationsChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
