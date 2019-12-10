.class public interface abstract Lcom/oneplus/android/os/IOpMotorManager;
.super Ljava/lang/Object;
.source "IOpMotorManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/os/IOpMotorManager$Stub;,
        Lcom/oneplus/android/os/IOpMotorManager$Default;
    }
.end annotation


# static fields
.field public static final MOTORDOWNED:I = 0x0

.field public static final MOTORDOWNING:I = -0x1

.field public static final MOTORDOWNLOCKED:I = -0x5

.field public static final MOTORERROR:I = -0xa

.field public static final MOTORUPED:I = 0xa

.field public static final MOTORUPING:I = 0x1

.field public static final MOTORUPLOCKED:I = 0x5


# virtual methods
.method public abstract downMotorByPrivacyApp(Ljava/lang/String;ILandroid/os/IBinder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract downMotorBySystemApp(Ljava/lang/String;Landroid/os/IBinder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMotorStateBySystemApp()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerMotorStateChangedCallback(Lcom/oneplus/android/os/IOpMotorStateChangedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterMotorStateChangedCallback(Lcom/oneplus/android/os/IOpMotorStateChangedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract upMotorBySystemApp(Ljava/lang/String;Landroid/os/IBinder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
