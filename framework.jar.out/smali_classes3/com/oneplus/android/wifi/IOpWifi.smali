.class public interface abstract Lcom/oneplus/android/wifi/IOpWifi;
.super Ljava/lang/Object;
.source "IOpWifi.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/wifi/IOpWifi$Stub;,
        Lcom/oneplus/android/wifi/IOpWifi$Default;
    }
.end annotation


# virtual methods
.method public abstract testOpWifi()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
