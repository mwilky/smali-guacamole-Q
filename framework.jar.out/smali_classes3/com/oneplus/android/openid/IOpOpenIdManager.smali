.class public interface abstract Lcom/oneplus/android/openid/IOpOpenIdManager;
.super Ljava/lang/Object;
.source "IOpOpenIdManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/openid/IOpOpenIdManager$Stub;,
        Lcom/oneplus/android/openid/IOpOpenIdManager$Default;
    }
.end annotation


# virtual methods
.method public abstract clearOpenId(Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
